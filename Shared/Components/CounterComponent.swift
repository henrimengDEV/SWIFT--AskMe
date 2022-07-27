//
//  CounterComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct CounterComponent: View {
    @State var value: Int
    
    var body: some View {
        ZStack {
            Circle().stroke(.black, lineWidth: 1)
            Text("+\(value)").font(.system(size: 14))
        }.frame(width: 35, height: 35)
    }
}

struct CounterComponent_Previews: PreviewProvider {
    static var previews: some View {
        CounterComponent(value: 40)
    }
}
