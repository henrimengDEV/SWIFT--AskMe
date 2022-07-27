//
//  AddToList.swift
//  AskMe
//
//  Created by Mickael Aknine on 29/06/2022.
//

import SwiftUI

struct AddToList: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selection: Int? = nil
    
    @State var whatINeed = "";
    
    @EnvironmentObject var store: AppState
    
    var body: some View {
        NavigationView{
            Form {
                TextField("Ask something...", text: $whatINeed)
            }
        }.navigationBarItems(leading: Spacer(), trailing: validButton)
        
    }
    
    var validButton : some View {
        NavigationLink(destination: AskedList(), tag: 1, selection: $selection) {
            Button(action: {
                onAdd()
                self.mode.wrappedValue.dismiss()
            }) {
                Text("Add")
            }.padding(.horizontal)
        }
        }
    
    func onAdd() {
        store.listsOfNeeded.append(Item(name: whatINeed))
    }
}

struct AddToList_Previews: PreviewProvider {
    static var previews: some View {
        AddToList()
    }
}
