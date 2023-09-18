//
//  Button+Extension.swift
//  chat_app
//
//  Created by Mojave on 18/09/2023.
//

import SwiftUI
extension Button {
    func CommonButton(frame: CGRect) -> some View {
        return self.frame(width: frame.width, height: frame.height).cornerRadius(5).background(RoundedRectangle(cornerRadius: 5, style: .continuous)
            .foregroundColor(.blue))
    }
}
