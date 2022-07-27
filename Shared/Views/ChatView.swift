//
//  MessengerView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var store: AppState
    var destinationUser: User
    @State var conversationIndex = 1
    @State var typingMessage: String = ""
    
    
    func sendMessage() -> Void {
        store.conversations[conversationIndex].messages.append(
            Message(id: store.conversations[conversationIndex].messages.count + 1, content: typingMessage, user: store.currentUser)
        )
        typingMessage = ""
    }
    
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(store.conversations[conversationIndex].messages) { message in
                    MessageView(currentMessage: message)
                }
            }.padding()
            Spacer()
            HStack {
                HStack {
                    TextField("Message...", text: $typingMessage)
                    Button(action: sendMessage) {
                        Image(systemName: "arrow.right")
                    }
                }
            }
            .padding()
            .background(Color(UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)))
            .cornerRadius(10)
            .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(
            destinationUser: User(
                id: 2, firstname: "Micka", lastname: "LeBg", avatar: "", isCurrentUser: false
            )
        ).environmentObject(AppState())
    }
}
