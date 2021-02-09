//
//  Detail.swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import SwiftUI

struct Detail: View {
    @EnvironmentObject var championData: championData
    
    var champion: Champions
    
    var championInt: Int {
        championData.champions.firstIndex(where: {$0.id == champion.id})!
    }
    
    var body: some View {
        ScrollView {
            CircleImage(backgroundImage: champion.backGround, thumbImage: champion.thumbNail)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text("\(champion.name)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                    FavButton(isSet: $championData.champions[championInt].isFav)
                }
                
                HStack {
                    Text("\(champion.nickname)")
                        .font(.headline)
                    Spacer()
                    Text("\(champion.role)")
                        .font(.headline)
                }
                
                Divider()
                
                Text("Description")
                    .font(.title3)
                    .fontWeight(.light)
                Text("\(champion.description)")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .lineLimit(nil)
            }
            .padding()
        }
        .navigationTitle("\(champion.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(champion: championData().champions[0])
    }
}
