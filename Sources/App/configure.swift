import Fluent
import FluentPostgresDriver
import FluentSQLiteDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

//    app.databases.use(.postgres(
//        hostname: Environment.get("ec2-54-74-60-70.eu-west-1.compute.amazonaws.com") ?? "localhost",
//        port: Environment.get("5432").flatMap(Int.init(_:)) ?? PostgresConfiguration.ianaPortNumber,
//        username: Environment.get("zauqgldpaphejf") ?? "vapor_username",
//        password: Environment.get("ed35eca6a89f580a2a53884e7b119c99bd9498ade0c8a12fc473a67a46250123") ?? "vapor_password",
//        database: Environment.get("d55ukhpl7ldne3") ?? "vapor_database"
//    ), as: .psql)
    
    app.databases.use(.sqlite(.memory), as: .sqlite)

    app.migrations.add(CreateAcronym())
    app.logger.logLevel = .debug
    try app.autoMigrate().wait()
    
    try routes(app)
}


