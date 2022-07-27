//
//  User.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import Foundation

struct User : Identifiable {
    var id: Int
    var firstname: String
    var lastname: String
    var avatar: String
    var isCurrentUser: Bool = false
}
