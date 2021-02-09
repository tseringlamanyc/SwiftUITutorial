//
//  ChampionRow.swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import SwiftUI

struct ChampionRow: View {
    
    var champion: Champions
    
    var body: some View {
        HStack {
            champion.thumbNail
                .resizable()
                .frame(width: 50, height: 50)
            Text(champion.name)
            
            Spacer()
            
            if champion.isFav {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct ChampionRow_Previews: PreviewProvider {
    
    static var champions = championData().champions
    
    static var previews: some View {
        Group {
            ChampionRow(champion: champions[1])
            ChampionRow(champion: champions[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
