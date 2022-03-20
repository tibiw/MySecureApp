//
//  ContentView.swift
//  MySecureApp
//
//  Created by Tibor Waxmann on 20.03.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @StateObject var authentication: Authentication
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                Text("Authorized... You are in!")
                    .font(.largeTitle)
            }
            .padding()
            .navigationTitle("My secure app")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        authentication.updateValidation(success: false)
                    } label: {
                        Text("Log out")
                    }
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
