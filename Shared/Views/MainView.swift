//
//  MainView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var store: AppState
    
    var body: some View {
        TabView {
            ActivityView()
                .badge(store.badgeActivity)
                .tabItem {
                    Label("Activité", systemImage: "book.fill")
                }
            AccountView()
                .badge("!")
                .tabItem {
                    Label("Compte", systemImage: "person.crop.circle.fill")
                }
            CollaborationView()
                .tabItem {
                    Label("Collaboration", systemImage: "person.3.fill")
                }
            FriendsView()
                .tabItem {
                    Label("Amis", systemImage: "message")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(AppState())
    }
}
