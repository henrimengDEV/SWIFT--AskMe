//
//  TeamCardComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct TeamCardComponent: View {
    @State var group: Group
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(group.name).bold().font(.system(size: 25))
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "arrow.right").foregroundColor(.black)
                    }
                }
                Text("Membre (\(group.members.count))").padding(.vertical).font(.system(size: 14))
                HStack {
                    if (group.members.count > 3) {
                        ForEach(0..<4) { _ in
                            AvatarComponent()
                        }
                        if (group.members.count > 4) {
                            CounterComponent(value: group.members.count - 4)
                        }
                    } else {
                        ForEach(group.members) { member in
                            AvatarComponent()
                        }
                    }
                }
            }
            Spacer()
        }.padding(20).background().cornerRadius(10).shadow(radius: 1)
    }
}

struct TeamCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        TeamCardComponent(
            group: Group(
                id: 1,
                name: "Team 1",
                members: [
                    User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true),
                    User(id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false),
                    User(id: 3, firstname: "Ahmédine", lastname: "LeBg", avatar: "", isCurrentUser: false),
                    User(id: 4, firstname: "Paul", lastname: "LeTroll", avatar: "", isCurrentUser: false)
                ]
            )
        )
    }
}
