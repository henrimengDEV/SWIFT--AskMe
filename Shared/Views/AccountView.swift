//
//  AccountView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//
import SwiftUI

struct AccountView: View {
    @State var text = "xxxxxxxxx"
    
    var body: some View {
        VStack {
            TitleComponent(text: "Compte")
            ProfilCardComponent()
            SoldeComponent()
            Form {
                List {
                    Section {
                        TextField("Téléphone", text: $text)
                        TextField("Téléphone", text: $text)
                    }
                }
                
                TextField("Téléphone", text: $text)
                TextField("Téléphone", text: $text)
                TextField("Téléphone", text: $text)
                TextField("Téléphone", text: $text)
                
            }
            Spacer()
        }.padding()
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
