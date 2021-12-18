//
//  ContentView.swift
//  SuperHeroSwiftUI
//
//  Created by Derya Bel on 18.12.2021.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superKahramanDizisi){superkahraman in
                NavigationLink(destination: DetayView(secilenKahraman: superkahraman), label:{ ListeRowView(superkahraman:superkahraman)
                })
            }.navigationTitle(Text("Book Of SuperHeroes"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
