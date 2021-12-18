//
//  ListeRowView.swift
//  SuperHeroSwiftUI
//
//  Created by Derya Bel on 19.12.2021.
//

import SwiftUI

struct ListeRowView: View {
    var superkahraman : SuperHero
    var body: some View {
        HStack{
            Image(superkahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 90, alignment: .leading)
                .clipShape(Circle())
                Spacer()
            VStack{
            Text(superkahraman.isim).font(.title).bold()
                Text(superkahraman.gercekIsim)
                    
            }
            Spacer()
        }
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superkahraman: batman)
    }
}
