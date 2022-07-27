//
//  UserCardComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct UserCardComponent: View {
    @State var currentUser: User
    
    var body: some View {
        HStack {
            AvatarComponent()
            VStack {
                Text(currentUser.firstname + " " + currentUser.lastname).bold()
                Text(
                    "@" + currentUser.firstname.lowercased() + currentUser.lastname.lowercased()
                ).italic()
            }
            Spacer()
        }
//        .padding().background().cornerRadius(10).shadow(radius: 1)
    }
}

struct UserCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        UserCardComponent(currentUser: User(
                id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true
            )
        )
    }
}
