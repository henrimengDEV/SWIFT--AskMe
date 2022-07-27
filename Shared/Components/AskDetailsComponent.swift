//
//  AskDetailsComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct AskDetailsComponent: View {
    @State var title: String = "Hello, World!"
    
    var body: some View {
        Form {
            VStack(alignment: .leading) {
                TitleComponent(text: "Hello, World!")
//                TextField("Title", text: $title)
//                    .font(Font.headline.weight(.bold))
//                    .padding().background().cornerRadius(5).shadow(radius: 2)
                Text("Description").padding(.top, 3)
                HStack {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 4, height: 40)
                    VStack(alignment: .leading) {
                        Text("Le 05/12/2022")
                        Text("Par Someone")
                    }.padding(.vertical)
                    Spacer()
                }
                Spacer()
            }.padding(30)
        }
    }
}

struct AskDetailsComponent_Previews: PreviewProvider {
    static var previews: some View {
        AskDetailsComponent()
    }
}
