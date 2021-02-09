//
//  Model.swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import Foundation
import SwiftUI

struct Champions: Hashable, Codable, Identifiable {
    var name: String
    var description: String
    var role: String
    var nickname: String
    var id: Int
    var isFav: Bool 
    
    private var backGroundImage: String
    private var thumbImage: String
    
    var backGround: Image {
        Image(backGroundImage)
    }
    
    var thumbNail: Image {
        Image(thumbImage)
    }
}
