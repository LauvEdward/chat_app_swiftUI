//
//  FirebaseManager.swift
//  chat_app
//
//  Created by Mojave on 30/08/2023.
//

import Foundation
import FirebaseAuth
class FirebaseManager {
    static let shared = FirebaseManager()
    func login(email: String, pass: String, completion: ()->()) {
        print("Firebase Manager login")
        Auth.auth().createUser(withEmail: email, password: pass, completion: { authResult, err in
            <#code#>
        })
        
    }
}
