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
    var body: some View {
        VStack {
            Text("Wellcome to Chat App").bold()
            TextField("User name:", text: $username).frame(height: 40).background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing], 30)
            TextField("Password:", text: $username).frame(height: 40).background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing], 30)
            Button {
                FirebaseManager.shared.login()
            } label: {
                Text("Login").foregroundColor(.white)
            }.frame(width: 200,height: 40).background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                .foregroundColor(.blue)
            )
            
        }
    }
}

struct LoginViewController_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
