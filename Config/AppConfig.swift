//
//  AppConfig.swift
//  TaskApp
//
//  Created by Michael Wysocki on 14/06/2024.
//

import Foundation

struct AppConfig: Codable {
    let appName: String
    let appDescription: String
    let appVersion: String
    
    init(appName: String, appDescription: String, appVersion: String) {
        self.appName = appName
        self.appDescription = appDescription
        self.appVersion = appVersion
    }
    
    func getAppName() -> String {
        return self.appName
    }
    
    func getAppDescription() -> String {
        return self.appDescription
    }
    
    func getAppVersion() -> String {
        return self.appVersion
    }
}
