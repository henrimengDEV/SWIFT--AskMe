//
//  TitleComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct TitleComponent: View {
    @State var text: String = ""
    
    var body: some View {
        HStack {
            Text(text).bold().font(.system(size: 25))
            Spacer()
        }
    }
}

struct TitleComponent_Previews: PreviewProvider {
    static var previews: some View {
        TitleComponent(text: "Hello World")
    }
}
