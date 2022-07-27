//
//  Home.swift
//  AskMe
//
//  Created by Mickael Aknine on 29/06/2022.
//

import SwiftUI

struct Home: View {
    
    var image: String = "test"
    var title: String = "Team #4"
    var type: String = "People (3)"
    var price: Double = 15.00
    @State var selection: Int? = nil
    
    @EnvironmentObject var store: AppState
    
    var body: some View {
        NavigationView{
            VStack() {
                ForEach(0..<3) { _ in
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text(title)
                                .font(.system(size: 26, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                            Text(type)
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                ForEach(0..<3) { _ in
                                    Image("profile-icon-9")
                                        .resizable()
                                        .frame(width:34, height: 34)
                                        .clipShape(Circle())
                                        .foregroundColor(.white)
                                        .padding(.top, 8)
                                        .padding(.bottom, 34)
                                }
                                
                            }
                        }.padding(.leading, 20).padding(.top, 10)
                        Spacer()
                        NavigationLink(destination: EmptyView(), tag: 1, selection: $selection) {
                            Button(action: {
                                self.selection = 1
                            }) {
                                HStack {
                                    Image(systemName: "arrow.right")
                                        .font(.title)
                                        .foregroundColor(.white)
                                }
                                .padding(.horizontal)
                            }
                        }.padding().padding(.bottom, 120)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                    .background(Color(red: 32/255, green: 36/255, blue: 38/255))
                    .modifier(CardModifier())
                    .padding(.all, 10)
                }
            }
        }
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
    }
    
}

