//
//  MessageView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct MessageView : View {
    var currentMessage: Message
    var body: some View {
        HStack(alignment: .bottom, spacing: 15) {
            if !currentMessage.user.isCurrentUser {
                Image("profile-image")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
            } else {
                Spacer()
            }
            ContentMessageView(contentMessage: currentMessage.content,
                               isCurrentUser: currentMessage.user.isCurrentUser)
            if (!currentMessage.user.isCurrentUser) {
                Spacer()
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(
            currentMessage: Message(
                id: 1,
                content: "There are a lot of premi",
                user: User(id: 1, firstname: "Henri", lastname: "Meng", avatar: "", isCurrentUser: true)
            )
        )
    }
}
