//
//  SoldeComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct SoldeComponent: View {
    var body: some View {
        HStack() {
            Image(systemName:"sun.max.fill")
                .padding()
                .foregroundColor(.blue)
                .cornerRadius(5)
            VStack {
                Text("Solde").bold()
                Text("1,50 €")
            }
            Spacer()
        }
    }
}

struct SoldeComponent_Previews: PreviewProvider {
    static var previews: some View {
        SoldeComponent()
    }
}
