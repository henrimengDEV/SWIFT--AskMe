//
//  FriendsView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct FriendsView: View {
    @EnvironmentObject var store: AppState

    var body: some View {
        NavigationView {
            VStack {
                List {
                        ForEach(store.users) { user in
                            NavigationLink {
                                ChatView(destinationUser: user)
                                    .navigationTitle(user.firstname + " " + user.lastname)
                            } label: {
                                UserCardComponent(currentUser: user).foregroundColor(.black)
                            }
                        }.padding(.vertical, 10)
                }
                Spacer()
            }
            
            .navigationBarTitle("Amis")
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView().environmentObject(AppState())
    }
}
