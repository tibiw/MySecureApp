//
//  APIService.swift
//  MySecureApp
//
//  Created by Tibor Waxmann on 20.03.2022.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    func login(credentials: Credentials,
               completion: @escaping (Result<Bool, Authentication.AuthenticationError>) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if credentials.password == "password" {
                completion(.success(true))
            } else {
                completion(.failure(.invalidCredentials))
            }
        }
    }
}
