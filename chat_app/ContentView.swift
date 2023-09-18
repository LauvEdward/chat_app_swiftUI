//
//  ContentView.swift
//  chat_app
//
//  Created by Mojave on 23/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State var isLogin = false
    var body: some View {
        if isLogin {
            Home()
        } else {
            Login()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
