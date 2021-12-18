//
//  DetayView.swift
//  SuperHeroSwiftUI
//
//  Created by Derya Bel on 18.12.2021.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperHero
    var body: some View {
        
        VStack{
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.all)
            
            
            OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y:UIScreen.main.bounds.height * -0.25)
                .padding(.bottom,UIScreen.main.bounds.height * -0.13)
            VStack{
                HStack{
                Text(secilenKahraman.isim)
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    Spacer()
                    
                Text(secilenKahraman.gercekIsim)
                        .font(.title)
                        .foregroundColor(.orange)
            }
                HStack{
                    Text(secilenKahraman.sehir)
                        .font(.title)
                    Spacer()
                    Text(secilenKahraman.meslek)
                        .font(.title)
                }
            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.1)
            Spacer()
        }
    }
}


struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: spiderman)
    }
}
