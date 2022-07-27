//
//  LandingView.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct LandingView: View {
    @EnvironmentObject var store: AppState
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
                .overlay(LinearGradient(
                    colors: [Color.black.opacity(0.10), Color.black.opacity(0.30)],
                    startPoint: .topLeading,
                    endPoint: .bottomLeading
                ))
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "leaf.fill")
                        .foregroundStyle(Color.green)
                    Text("Take your time, just ..").foregroundColor(.white).font(.title2)
                }
                
                Text("AskMe").bold().italic().foregroundColor(.white).font(.title)
                
                Spacer()
                HStack {
                    Spacer()
                    nextBtn
                }
            }.padding()
        }
    }
    
    var nextBtn: some View {
        Button(action: {
            store.toggleLanding = false
        }, label: {
            HStack {
                Text("Suivant")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                Image(systemName: "chevron.forward")
            }
            .foregroundColor(.primary)
            .padding(10)
            .padding(.horizontal)
            .background(.white)
            .cornerRadius(50)
        })
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
