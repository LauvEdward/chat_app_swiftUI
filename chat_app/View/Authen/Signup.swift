//
//  Signup.swift
//  chat_app
//
//  Created by Mojave on 30/08/2023.
//

import SwiftUI

struct Signup: View {
    @State var email = ""
    @State var password = ""
    @State var displayname = ""
    
    private var isFormValid: Bool {
        !email.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace && !displayname.isEmptyOrWhiteSpace
    }
    var body: some View {
        Form {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            TextField("Email", text: $email)
            TextField("Password", text: $password)
            TextField("Display name", text: $displayname)
            HStack {
                Spacer()
                Button("Sign up") {
                    
                }.disabled(!isFormValid)
                Button("Login") {
                    
                }
                Spacer()
            }
        }
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
