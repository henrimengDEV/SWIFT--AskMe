//
//  Group.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import Foundation

struct Group : Identifiable {
    var id: Int
    var name: String
    var members: [User]
}
