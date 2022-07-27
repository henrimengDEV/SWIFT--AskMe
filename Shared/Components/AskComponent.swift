//
//  AskComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct AskComponent: View {
    @State var showingPopover = false
    @State var ask: Ask
    
    var body: some View {
        Button {
            showingPopover = true
        } label: {
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: "leaf.fill")
                    .foregroundStyle(Color.green)
                VStack(alignment: .leading) {
                    Text(ask.title).bold().lineLimit(1)
                    Text(ask.description).fontWeight(.light).lineLimit(1)
                    Text("@\(ask.user.firstname)\(ask.user.lastname)")
                        .fontWeight(.light)
                }
            }.padding(.vertical).foregroundColor(.black)
        }.popover(isPresented: $showingPopover) {
            AskDetailsComponent(ask: ask)
        }
    }
}

struct AskComponent_Previews: PreviewProvider {
    static var previews: some View {
        AskComponent(
            ask: Ask(
                id: 1, title: "J'aimerai apprendre à tatouer", description: "Je cherche un tatoueur pour m'expliquer les bases",
                user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
                resolve: AskResolve(
                    hero: User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
                    creationDate: "12/05/2022"
                )
            )
        )
    }
}
