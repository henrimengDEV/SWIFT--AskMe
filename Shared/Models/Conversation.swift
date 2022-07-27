//
//  Conversation.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import Foundation

struct Conversation : Identifiable {
    var id: Int
    var user: User
    var messages: [Message]
}
