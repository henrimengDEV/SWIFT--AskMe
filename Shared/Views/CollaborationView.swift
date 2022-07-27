//
//  CollaborationView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct CollaborationView: View {
    @EnvironmentObject var store: AppState
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(store.groups) { group in
                        NavigationLink {
                            AskedList()
                        } label: {
                            TeamCardComponent(group: group).foregroundColor(.black)
                        }
                    }.padding(10)
                }
                Spacer()
            }
            
            .navigationBarTitle("Collaboration")
        }
    }
}

struct CollaborationView_Previews: PreviewProvider {
    static var previews: some View {
        CollaborationView().environmentObject(AppState())
    }
}

