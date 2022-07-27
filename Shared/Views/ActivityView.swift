//
//  ActivityView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct ActivityView: View {
    @EnvironmentObject var store: AppState
    @State var selection: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleComponent(text: "Activité")
            
            Picker("ChangeActivity", selection: $selection) {
                Text("Moi").tag(0)
                Text("Amis").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if (selection == 0) {
                ForEach(store.myAsks) { ask in
                    AskComponent(ask: ask)
                }
            } else {
                ForEach(store.asks) { ask in
                    AskComponent(ask: ask)
                }
            }
            Spacer()
        }.padding()
    }
}

struct Activity_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView().environmentObject(AppState())
    }
}
