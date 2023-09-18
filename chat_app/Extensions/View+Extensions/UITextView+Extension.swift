//
//  UITextView+Extension.swift
//  chat_app
//
//  Created by Mojave on 18/09/2023.
//

import SwiftUI
extension TextField {
    func CommonTextField() -> some View {
        return self.frame(height: 40).background(RoundedRectangle(cornerRadius: 5, style: .continuous)
            .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing], 30)
    }
}
