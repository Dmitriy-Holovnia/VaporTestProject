import Fluent
import Vapor

func routes(_ app: Application) throws {
    //MARK: Controllers
    let acronymsController = AcronymsController()
    
    try app.register(collection: acronymsController)
    
    
    
    //MARK: CRUD for acronyms
    /*
    // Create
    app.post("api", "acronyms") { request -> EventLoopFuture<Acronym> in
        let acronym = try request.content.decode(Acronym.self)
        return acronym.save(on: request.db).map({ acronym })
    }
    
    // Get all
    app.get("api", "acronyms") { request -> EventLoopFuture<[Acronym]> in
        Acronym.query(on: request.db).all()
    }
    
    // Get by id
    app.get("api", "acronyms", ":acronymID") { request -> EventLoopFuture<Acronym> in
        Acronym.find(request.parameters.get("acronymID"), on: request.db)
            .unwrap(or: Abort(.notFound))
    }
    
    // Get first
    app.get("api", "acronyms", "first") { request -> EventLoopFuture<Acronym> in
        Acronym.query(on: request.db)
            .first()
            .unwrap(or: Abort(.notFound))
    }
    
    // Update
    app.put("api", "acronyms", ":acronymID") { request -> EventLoopFuture<Acronym> in
        let updatedAcronym = try request.content.decode(Acronym.self)
        return Acronym.find(request.parameters.get("acronymID"), on: request.db)
            .unwrap(or: Abort(.notFound))
            .flatMap { acronym in
                acronym.long = updatedAcronym.long
                acronym.short = updatedAcronym.short
                return acronym.save(on: request.db)
                    .map({ acronym })
            }
    }
    
    // Delete
    app.delete("api", "acronyms", ":acronymID") { request -> EventLoopFuture<HTTPStatus> in
        Acronym.find(request.parameters.get("acronymID"), on: request.db)
            .unwrap(or: Abort(.notFound))
            .flatMap({ $0.delete(on: request.db).transform(to: .noContent) })
    }
    
    // Filter
    app.get("api", "acronyms", "search") { request -> EventLoopFuture<[Acronym]> in
        guard let searchTerm = request.query[String.self, at: "term"] else {
            throw Abort(.badRequest)
        }
        
        return Acronym.query(on: request.db).group(.or) { or in
            or.filter(\.$short == searchTerm)
            or.filter(\.$long == searchTerm)
        }
        .all()
    }
    */
}
