//
//  SomethingIWant.swift
//  AskMe
//
//  Created by Mickael Aknine on 28/06/2022.
//

import Foundation

class Item: Identifiable {
    var id = UUID()
    var name: String;
    
    init(name: String) {
        self.name = name
    }
}
