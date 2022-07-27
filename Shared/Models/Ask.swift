//
//  Ask.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import Foundation

struct Ask : Identifiable {
    var id: Int
    var title: String
    var description: String
    var user: User
    var resolve: AskResolve?
}

struct AskResolve {
    var hero: User
    var creationDate: String
}
