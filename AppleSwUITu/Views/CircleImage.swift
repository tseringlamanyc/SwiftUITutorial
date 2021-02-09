//
//  CircleImage.swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import SwiftUI

struct CircleImage: View {
    
    var backgroundImage: Image
    var thumbImage: Image
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            backgroundImage
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3)
                .aspectRatio(contentMode: .fill)
            
            thumbImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .shadow(color: Color.white, radius: 10)
                .padding()
        }
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(backgroundImage: Image("jhin"), thumbImage: Image("jhin-main"))
    }
}
