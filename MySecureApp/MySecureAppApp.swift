//
//  MySecureAppApp.swift
//  MySecureApp
//
//  Created by Tibor Waxmann on 20.03.2022.
//

import SwiftUI

@main
struct MySecureAppApp: App {
    // MARK: - PROPERTIES
    @StateObject var authentication = Authentication()
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                ContentView(authentication: Authentication())
                    .environmentObject(authentication)
            } else {
                LoginView()
                    .environmentObject(authentication)
            }
        }
    }
}
