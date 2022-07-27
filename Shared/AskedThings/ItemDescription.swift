//
//  ItemDescription.swift
//  AskMe
//
//  Created by Mickael Aknine on 29/06/2022.
//

import SwiftUI

struct ItemDescription: View {
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .top) {
                       Rectangle()
                           .edgesIgnoringSafeArea(.top)
                           .frame(height: 210)
                           .foregroundColor( .teal)
                           .opacity(0.33)
                       Image("profile-icon-9")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .top)
                           .clipShape(Circle())
                           .overlay(Circle().stroke(Color.white, lineWidth: 4))
                           .shadow(radius: 25)
                    Text("henmedhael MENGABDELNINE").padding(.top, 180)
                }
               }
            DescriptionText()
            }
            Spacer()
        }
}

struct ItemDescription_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescription()
    }
}

struct DescriptionText: View {
    var name = "Bubble Tea"
    var subtitle = "I just want my buuuubbbllle teaaa"
    var description = "With : Tapioca and Peach bubble pliz"
    
    var body: some View {
        VStack(spacing: 15) {
            VStack(spacing: 5) {
                HStack{
                    Text("Ask").font(.title).fontWeight(.semibold).padding(.leading, 10)
                    
                    Text(name)
                        .bold()
                        .font(.title)
                    
                }.padding()
                Text(subtitle)
                    .font(.body)
                    .foregroundColor(.secondary)
                }
                
            Text(description)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
    }
}
