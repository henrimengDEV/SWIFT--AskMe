//
//  ContentMessageView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct ContentMessageView: View {
    var contentMessage: String
    var isCurrentUser: Bool
    
    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white : Color.black)
            .background(isCurrentUser ? Color.blue : Color(UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)))
            .cornerRadius(10)
    }
}

struct ContentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentMessageView(contentMessage: "Hi, I am your friend", isCurrentUser: true)
    }
}
