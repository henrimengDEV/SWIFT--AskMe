//
//  AskMeApp.swift
//  Shared
//
//  Created by Mickael Aknine on 27/06/2022.
//

import SwiftUI

@main
struct AskMeApp: App {
    @StateObject var store = AppState()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                if store.toggleLanding {
                    LandingView()
                        .environmentObject(store)
                } else {
                    withAnimation {
                        MainView()
                            .transition(.move(edge: .trailing))
                            .environmentObject(store)
                    }
                }
            }
        }
    }
}
