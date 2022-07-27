//
//  ContentView.swift
//  Shared
//
//  Created by Mickael Aknine on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: AppState
    var body: some View {
        Home().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppState())
    }
}
