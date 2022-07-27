//
//  AccountView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//
import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            TitleComponent(text: "Compte")
            ProfilCardComponent()
            SoldeComponent()
            Spacer()
        }.padding()
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
