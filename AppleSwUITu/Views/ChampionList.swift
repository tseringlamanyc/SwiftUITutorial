//
//  ChampionList.swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import SwiftUI

struct ChampionList: View {
    
    @EnvironmentObject var championData: championData
    @State private var favoritesShown = false
    
    var favChamps: [Champions] {
        championData.champions.filter { champion in
            (!favoritesShown || champion.isFav)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $favoritesShown) {
                    Text("Favorites only")
                }
                ForEach(favChamps) { (champion) in
                    NavigationLink(destination: Detail(champion: champion)) {
                        ChampionRow(champion: champion)
                    }
                }
            }
            .navigationTitle("Champions")
        }
    }
}

struct ChampionList_Previews: PreviewProvider {
    static var previews: some View {
        ChampionList()
            .environmentObject(championData())
    }
}
