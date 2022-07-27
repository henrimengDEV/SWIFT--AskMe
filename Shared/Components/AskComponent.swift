//
//  AskComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct AskComponent: View {
    @State var showingPopover = false // 1
    
    var body: some View {
        Button {
            showingPopover = true
        } label: {
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: "leaf.fill")
                    .foregroundStyle(Color.green)
                VStack(alignment: .leading) {
                    HStack {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).bold()
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                    Text("Description")
                }
            }.padding(.vertical).foregroundColor(.black)
        }.popover(isPresented: $showingPopover) {
            AskDetailsComponent()
        }
    }
}

struct AskComponent_Previews: PreviewProvider {
    static var previews: some View {
        AskComponent()
    }
}
