//
//  AppState.swift
//  AskMe
//
//  Created by Mickael Aknine on 28/06/2022.
//

import Foundation
class AppState: ObservableObject {
    @Published var currentUser = User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)
    
    @Published var listsOfNeeded: [Item] = [
        Item(name: "Bubble Tea"),
        Item(name: "Coffee"),
        Item(name: "Massage")
    ]
    
    @Published var users: [User] = [
        User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
        User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
        User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false),
        User(id: 4, firstname: "Paul", lastname: "LeTroll", avatar: "", isCurrentUser: false)
    ]
    
    @Published var groups: [Group] = [
        Group(id: 1, name: "Team #1", members: [
            User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
            User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)
        ]),
        Group(id: 2, name: "Team #2", members: [
            User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
            User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
            User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
            User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false),
            User(id: 4, firstname: "Paul", lastname: "LeTroll", avatar: "", isCurrentUser: false),
            User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
            User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
            User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false),
            User(id: 4, firstname: "Paul", lastname: "LeTroll", avatar: "", isCurrentUser: false)
        ]),
        Group(id: 3, name: "Team #3", members: []),
        Group(id: 4, name: "Team #4", members: []),
        Group(id: 5, name: "Team #5", members: [
            User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
            User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
            User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false),
            User(id: 4, firstname: "Paul", lastname: "LeTroll", avatar: "", isCurrentUser: false)
        ]),
        Group(id: 6, name: "Team #6", members: [])
    ]
    
    @Published var conversations: [Conversation] = [
        Conversation(
            id: 1,
            user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: false),
            messages: []
        ),
        Conversation(
            id: 2,
            user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
            messages: [
                Message(id: 1, content: "Salut", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 2, content: "Salut !", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 3, content: "ça va ?", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 4, content: "oui et toi ?", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 5, content: "très bien", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 6, content: "Parfait", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 7, content: "D'acc.", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true))
            ]
        ),
        Conversation(
            id: 3,
            user: User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false),
            messages: [
                Message(id: 1, content: "Salut", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 2, content: "Salut !", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 3, content: "ça va ?", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 4, content: "oui et toi ?", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 5, content: "très bien", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 6, content: "Parfait", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 7, content: "D'acc.", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true))
            ]
        ),
        Conversation(
            id: 3,
            user: User(id: 4, firstname: "Paul", lastname: "LeTroll", avatar: "", isCurrentUser: false),
            messages: [
                Message(id: 1, content: "Salut", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 2, content: "Salut !", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 3, content: "ça va ?", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 4, content: "oui et toi ?", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 5, content: "très bien", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)),
                Message(id: 6, content: "Parfait", user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)),
                Message(id: 7, content: "D'acc.", user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true))
            ]
        )
    ]
    
    @Published var badgeActivity = 2
}
