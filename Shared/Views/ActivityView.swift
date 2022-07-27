//
//  ActivityView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct ActivityView: View {
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
                AskComponent()
                AskComponent()
                AskComponent()
                AskComponent()
            } else {
                AskComponent()
                AskComponent()
            }
            Spacer()
        }.padding()
    }
}

struct Activity_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
