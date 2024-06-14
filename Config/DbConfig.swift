//
//  DbConfig.swift
//  TaskApp
//
//  Created by Michael Wysocki on 14/06/2024.
//

import Foundation

struct DbConfig: Codable {
    let dbUsername: String
    let dbPassword: String
    let dbHost: String
    let dbPort: Int
    let dbDatabaseName: String
    
    init(dbUsername: String, dbPassword: String, dbHost: String, dbPort: Int, dbDatabaseName: String) {
        self.dbUsername = dbUsername
        self.dbPassword = dbPassword
        self.dbHost = dbHost
        self.dbPort = dbPort
        self.dbDatabaseName = dbDatabaseName
    }
    
    func getUsername() -> String {
        return self.dbUsername
    }
    
    func getPassword() -> String {
        return self.dbPassword
    }
    
    func getHost() -> String {
        return self.dbHost
    }
    
    func getPort() -> Int {
        return self.dbPort
    }
    
    func getDatabaseName() -> String {
        return self.dbDatabaseName
    }
}
