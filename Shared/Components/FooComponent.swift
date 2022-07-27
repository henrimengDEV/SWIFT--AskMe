//
//  FooComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct FooComponent: View {
    @State var showingPopover = false // 1
    
    var body: some View {
        Button("Show Menu") {
            showingPopover = true
        }
        .popover(isPresented: $showingPopover) {
            Text("Your content here")
                .font(.headline)
                .padding()
        }
    }
}

struct FooComponent_Previews: PreviewProvider {
    static var previews: some View {
        FooComponent()
    }
}
