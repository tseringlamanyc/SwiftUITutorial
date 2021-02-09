//
//  FavButton .swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import SwiftUI

struct FavButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavButton__Previews: PreviewProvider {
    static var previews: some View {
        FavButton(isSet: .constant(true))
    }
}
