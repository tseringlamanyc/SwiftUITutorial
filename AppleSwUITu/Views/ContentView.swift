//
//  ContentView.swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import SwiftUI

struct ContentView: View { // content and layout
    var body: some View {
         ChampionList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(championData())
        // makes the object avalible to any subview 
    }
}
