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
    @State var errorMassage = ""
    @Binding var isPresented: Bool
    @State var isRegisterSuccess = false
    private var isFormValid: Bool {
        !email.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace
    }
    func registerAccount() async {
         let result = await FirebaseManager.shared.resigter(email: email, pass: password)
        switch result {
        case .failure(let err):
            errorMassage = err.localizedDescription
        case .success(let data):
            if let data = data {
                await FirebaseManager.shared.updateDisplayName(user: data.user)
                isRegisterSuccess = true
            }
        }
    }
    var body: some View {
        VStack {
            Text("Sign up your account")
            TextField("Email", text: $email).CommonTextField()
            TextField("Password", text: $password).CommonTextField()
            Button() {
                Task {
                    await registerAccount()
                }
            } label: {
                Text("Sign up").foregroundColor(.white)
            }.CommonButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50)).disabled(!isFormValid).alert(isPresented: $isRegisterSuccess) {
                Alert(title: Text("Register account success"), message: Text("Please, login with your account you did register"), dismissButton: .default(Text("OK"), action: {
                    isPresented = false
                }))
            }
        }
        Text(errorMassage)
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup(isPresented: .constant(true))
    }
}
