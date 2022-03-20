//
//  LoginView.swift
//  MySecureApp
//
//  Created by Tibor Waxmann on 20.03.2022.
//

import SwiftUI

struct LoginView: View {
    // MARK: - PROPERTIES
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Text("My secure app")
                .font(.largeTitle)
            
            TextField("Email address", text: $loginVM.credentials.email)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $loginVM.credentials.password)
            
            if loginVM.showProgressView {
                ProgressView()
            }
            
            Button {
                loginVM.login { success in
                    authentication.updateValidation(success: success)
                }
            } label: {
                Text("Log in")
            }
            .disabled(loginVM.loginDisabled)
            
            Spacer()
        }
        .autocapitalization(.none)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .disabled(loginVM.showProgressView)
        .alert(item: $loginVM.error) { error in
            Alert(
                title: Text("Invalid Login"),
                message: Text(error.localizedDescription)
//                dismissButton: <#T##Alert.Button?#>
            )
        }
    }
}

// MARK: - PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
