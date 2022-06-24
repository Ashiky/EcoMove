//
//  EcoMoveApp.swift
//  EcoMove
//
//  Created by Apprenant12 on 17/06/2022.
//

import SwiftUI

import FirebaseCore
import FirebaseDatabase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        Database.database().isPersistenceEnabled = true
        
        return true
    }
}

@main
struct EcoMoveApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
