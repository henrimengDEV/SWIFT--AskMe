//
//  Message.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import Foundation

struct Message : Identifiable {
    var id: Int
    var content: String
    var user: User
}
