//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Maarten Borsje on 16/06/2022.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    // MARK: - Public
    
    /// Check if username and email is available
    /// - Parameters
    ///     - Email: String representing email
    ///     - Username: String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    /// Inserts new userdate to database
    /// - Parameters
    ///     - Email: String representing email
    ///     - Username: String representing username
    ///     - comletion: Async collback for result if database entru succeeded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        database.child(email.safeDatabaseKey()).setValue(["username": username]){ error, _  in
            if error == nil {
                // succeeded
                completion(true)
                return
            }
            else {
                // failed
                completion(false)
                return
            }
        }
    }
    
    
}
