//
//  SuperHero.swift
//  SuperHeroSwiftUI
//
//  Created by Derya Bel on 18.12.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmi : String
    var ulke : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = SuperHero(isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi: "batman", ulke: "Amerika", sehir: "Gotham", meslek: "İş Adamı", koordinat :Koordinat(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperHero(isim: "Superman", gercekIsim: "Clar Kent", gorselIsmi: "superman", ulke: "Amerika", sehir: "Kansas", meslek: "Gazeteci", koordinat :Koordinat(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = SuperHero(isim: "Spiderman", gercekIsim: "Peter Parker", gorselIsmi: "spiderman", ulke: "Amerika", sehir: "New York", meslek: "Fotoğrafçı", koordinat :Koordinat(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperHero(isim: "Ironman", gercekIsim: "Tony Stark", gorselIsmi: "ironman", ulke: "Amerika", sehir: "Los Angeles", meslek: "İş Adamı", koordinat :Koordinat(latitude: 33.8003309, longitude: -118.2261494))

let superKahramanDizisi = [batman,superman,spiderman,ironman]
