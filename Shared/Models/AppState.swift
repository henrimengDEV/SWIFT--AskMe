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
    
    @Published var myAsks: [Ask] = [
        Ask(
            id: 1, title: "Quelqu'un peut passer le toeic à ma place ?", description: "S'il vous plaît",
            user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
            resolve: AskResolve(
                hero: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
                creationDate: "29/07/2022"
            )
           ),
        Ask(
            id: 2, title: "Qui veut du pain ?", description: "J'en fais maison",
            user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)
           ),
        Ask(
            id: 3, title: "Bubble tea", description: "Je vais acheter un bubble tea proche de Nation, si vous en voulez AskMe",
            user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)
           ),
        Ask(
            id: 4, title: "Y a plus de PQ", description: "Aled",
            user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)
           ),
        Ask(
            id: 5, title: "JAVA", description: "Je propose des cours de JAVA",
            user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)
           ),
        Ask(
            id: 6, title: "J'aimerai apprendre à tatouer", description: "Je cherche un tatoueur pour m'expliquer les bases",
            user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)
           )
    ]
    
    @Published var asks: [Ask] = [
        Ask(
            id: 1, title: "Qui veut une CI/CD ?", description: "Je coûte cher",
            user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)
           ),
        Ask(
            id: 2, title: "Mon mate de PA me rend fou, aidez moi à me relaxer", description: ";)",
            user: User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false)
           ),
        Ask(
            id: 3, title: "Je cherche un Bubble tea au taro laté", description: "C'est Henri qui me la conseiller",
            user: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false)
           ),
        Ask(
            id: 4, title: "Je cherche une partenaire de moto", description: ";)",
            user: User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false)
           )
    ]
    
    @Published var badgeActivity = 2
    @Published var toggleLanding = true
}
