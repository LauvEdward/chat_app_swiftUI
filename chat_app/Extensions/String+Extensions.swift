//
//  String+Extensions.swift
//  chat_app
//
//  Created by Mojave on 30/08/2023.
//

import Foundation
extension String {
    var isEmptyOrWhiteSpace: Bool {
        return self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
