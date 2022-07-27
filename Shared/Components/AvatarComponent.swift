//
//  AvatarComponent.swift
//  AskMe
//
//  Created by henrimeng on 27/07/2022.
//

import SwiftUI

struct AvatarComponent: View {
    var body: some View {
        Image(systemName: "person.circle.fill")
          .resizable()
          .frame(width: 40, height: 40)
//          .foregroundColor(.white)
          .background(Color(red: 200 / 255, green: 200 / 255, blue: 200 / 255))
          .clipShape(Circle())
    }
}

struct AvatarComponent_Previews: PreviewProvider {
    static var previews: some View {
        AvatarComponent()
    }
}
