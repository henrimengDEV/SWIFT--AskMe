//
//  AskDetailsComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct AskDetailsComponent: View {
    @State var ask: Ask
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("@\(ask.user.firstname)\(ask.user.lastname)")
                .fontWeight(.light)
                .padding(.vertical)
            TitleComponent(text: ask.title)
            Text(ask.description).padding(.top, 3)
            
            if (ask.resolve != nil) {
                HStack {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 4, height: 50)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("\(ask.resolve?.creationDate ?? "default value")").bold()
                        Text("\(ask.resolve?.hero.firstname ?? "default value") \(ask.resolve?.hero.lastname ?? "default value")").bold()
                    }.padding(.vertical)
                    Spacer()
                }
            }
            Spacer()
        }.padding(30)
    }
}

struct AskDetailsComponent_Previews: PreviewProvider {
    static var previews: some View {
        AskDetailsComponent(
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
