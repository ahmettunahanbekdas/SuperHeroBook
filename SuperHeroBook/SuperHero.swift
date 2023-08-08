//
//  SuperHero.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 8.08.2023.
//

import Foundation

import SwiftUI
import CoreLocation
 
struct Superhero : Identifiable{
    var id = UUID()
    var name : String
    var realName : String
    var imageName : String
    var city : String
    var job : String
    var cordinate : Cordinate
    
    var cordinateLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: cordinate.latitude, longitude: cordinate.longitude)
    }
}

struct Cordinate {
    var latitude : Double
    var longitude : Double
}

let batman = Superhero(name: "Batman", realName: "Bruce Vayne", imageName: "batman", city: "Gotham", job: "Buisnes Man", cordinate: Cordinate(latitude: 41.8713679, longitude: -87.7669902))

let spiderman = Superhero(name: "Spiderman", realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Photographer", cordinate: Cordinate(latitude: 40.72703794724936, longitude: -73.9989177642422))

let superman = Superhero(name: "Superman", realName: "Clark Kent", imageName: "superman", city: "Metropolis", job: "Journalist", cordinate: Cordinate(latitude: 37.16050659768459, longitude: -88.72775820067034))

let ironMan = Superhero(name: "Iron Man", realName: "Tony Stark", imageName: "ironman", city: "Malibu", job: "Engineer", cordinate: Cordinate(latitude: 34.035374675003574, longitude: -118.6921683596528))


let hulk = Superhero(name: "Hulk", realName: "Bruce Banner", imageName: "hulk", city: "New York", job: "Scientist", cordinate: Cordinate(latitude:40.72703794724936, longitude: -73.9989177642422))

let aquaman = Superhero(name: "Aquaman", realName: "Arthur Curry", imageName: "aquaman", city: "Atlantis", job: "King of the Seas", cordinate: Cordinate(latitude: -27.250982858485166, longitude: -15.597790793084965))

let flash = Superhero(name: "Flash", realName: "Barry Allen", imageName: "flash", city: "Central City", job: "Forensic Scientist", cordinate: Cordinate(latitude: 39.800512640833894, longitude: -105.5147838963449))

let captainAmerica = Superhero(name: "Captain America", realName: "Steve Rogers", imageName: "captainamerica", city: "New York", job: "Super Soldier", cordinate: Cordinate(latitude: 40.72703794724936, longitude: -73.9989177642422))


let superHeroArray = [batman, spiderman, superman, ironMan, hulk, aquaman, flash, captainAmerica]

