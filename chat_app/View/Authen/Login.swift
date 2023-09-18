//
//  LoginViewController.swift
//  chat_app
//
//  Created by Mojave on 23/08/2023.
//

import SwiftUI

struct Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var register = false
    func login() async {
        let result = await FirebaseManager.shared.login(email: username, pass: password)
    }
    var body: some View {
            VStack {
                Text("Wellcome to Chat App").bold()
                TextField("User name:", text: $username).CommonTextField()
                TextField("Password:", text: $username).CommonTextField()
                Button {
                    Task {
                        await login()
                    }
                } label: {
                    Text("Login").foregroundColor(.white)
                }.CommonButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
                Text("Are you already have account? Register.").font(.system(size: 14)).foregroundColor(.red).onTapGesture {
                    register = true
                }.sheet(isPresented: $register, onDismiss: {
                    register = false
                }) {
                    Signup(isPresented: $register)
                }
        }
    }
}

struct LoginViewController_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
