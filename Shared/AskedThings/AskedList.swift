//
//  feed.swift
//  AskMe
//
//  Created by Mickael Aknine on 27/06/2022.
//

import SwiftUI


struct AskedList: View {
    
    @EnvironmentObject var store: AppState
    @State private var editMode = EditMode.inactive
    @State var newWord: String = ""
    @State var isPresenting = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    Section {
                        ForEach(store.listsOfNeeded) { item in
                            NavigationLink {
                                ItemDescription()
                            } label: {
                                HStack{
                                    Image("profile-icon-9")
                                        .resizable()
                                        .frame(width:25, height: 25)
                                        .clipShape(Circle())
                                    Text(item.name)
                                }
                                
                            }
                        }
                        .onDelete(perform: deleteItems)
                    }
                }
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("Team 2")
                .toolbar {
                    EditButton()
                }
                footer_list().environmentObject(store)
            }
            
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        store.listsOfNeeded.remove(atOffsets: offsets)
    }
    
    struct footer_list: View {
        
        @EnvironmentObject var store: AppState
        
        @State var selection: Int? = nil
        
        var body: some View {
            HStack() {
                Spacer()
                NavigationLink {
                    AddToList()
                } label: {
                    Button(action: {
                        self.selection = 1
                    }) {
                        HStack {
                            Image(systemName: "plus")
                            Text("Add List").fontWeight(.semibold)
                        }
                        .padding(.horizontal)
                    }
                }
                
            }.navigationBarHidden(false)
        }
    }
    
}

struct feed_Previews: PreviewProvider {
    static var previews: some View {
        AskedList().environmentObject(AppState())
    }
}
