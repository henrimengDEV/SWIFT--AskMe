//
//  ProfilCardComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct ProfilCardComponent: View {
    var body: some View {
        VStack {
            HStack {
                AvatarComponent()
                VStack {
                    Text("Henri Meng").bold()
                    Text("@henrimeng").italic()
                }
                Spacer()
            }
            Text("Very cool description of me !").padding(.top)
        }.padding(30)
            .background()
            .cornerRadius(10)
            .shadow(
                color: Color(red: 220 / 255, green: 220 / 255, blue: 200 / 255),
                radius: 1
            )
    }
}

struct ProfilCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProfilCardComponent()
    }
}
