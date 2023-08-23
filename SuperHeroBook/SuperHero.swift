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
    var info : String
    
    var cordinateLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: cordinate.latitude, longitude: cordinate.longitude)
    }
}

struct Cordinate {
    var latitude : Double
    var longitude : Double
}

let batman = Superhero(name: "Batman", realName: "Bruce Vayne", imageName: "batman", city: "Gotham", job: "Buisnes Man", cordinate: Cordinate(latitude: 41.8713679, longitude: -87.7669902), info: "Batman is a fictional superhero created by artist Bob Kane and writer Bill Finger. He first appeared in Detective Comics #27 in 1939. Unlike many other superheroes, Batman doesn't possess superhuman powers; instead, he relies on his intellect, detective skills, physical prowess, and a wide array of gadgets to fight crime in Gotham City. His alter ego is Bruce Wayne, a wealthy and philanthropic playboy who witnessed his parents' murder as a child, driving him to become the Dark Knight, a symbol of justice.")

let spiderman = Superhero(name: "Spiderman", realName: "Peter Parker", imageName: "spiderman", city: "New York", job: "Photographer", cordinate: Cordinate(latitude: 40.72703794724936, longitude: -73.9989177642422), info: "Spider-Man is a fictional superhero created by writer Stan Lee and artist Steve Ditko. He first appeared in Amazing Fantasy #15 in 1962. Spider-Man's real name is Peter Parker, a high school student who gains spider-like abilities after being bitten by a radioactive spider. He has the ability to stick to walls, enhanced strength, agility, and a spider-sense that warns him of danger. Using his powers, Spider-Man fights crime in New York City while also dealing with the challenges of his personal life.")

let superman = Superhero(name: "Superman", realName: "Clark Kent", imageName: "superman", city: "Metropolis", job: "Journalist", cordinate: Cordinate(latitude: 37.16050659768459, longitude: -88.72775820067034), info: "Superman is a fictional superhero created by writer Jerry Siegel and artist Joe Shuster. He first appeared in Action Comics #1 in 1938 and is one of the most iconic and enduring characters in comic book history. Superman's alter ego is Clark Kent, a mild-mannered reporter for the Daily Planet newspaper. He possesses superhuman abilities, including incredible strength, speed, flight, and heat vision. Superman is known for his unwavering sense of justice and his commitment to protecting the innocent. He is often referred to as the Man of Steel due to his invulnerable nature.")

let ironMan = Superhero(name: "Iron Man", realName: "Tony Stark", imageName: "ironman", city: "Malibu", job: "Engineer", cordinate: Cordinate(latitude: 34.035374675003574, longitude: -118.6921683596528), info: "Iron Man is a fictional superhero appearing in Marvel Comics. Created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby, Iron Man first appeared in Tales of Suspense #39 in 1963. The character's real name is Tony Stark, a brilliant industrialist and engineer who creates a powered exoskeleton suit of armor to save his own life and later uses the technology to become the armored superhero Iron Man. Stark's suit gives him superhuman strength, flight, and an array of advanced weaponry, making him a key member of the Avengers.")

let hulk = Superhero(name: "Hulk", realName: "Bruce Banner", imageName: "hulk", city: "New York", job: "Scientist", cordinate: Cordinate(latitude:40.72703794724936, longitude: -73.9989177642422), info: "Hulk is a fictional superhero appearing in Marvel Comics. Created by writer Stan Lee and artist Jack Kirby, the character first appeared in The Incredible Hulk #1 in 1962. Hulk is the alter ego of Dr. Bruce Banner, a brilliant scientist who, after being exposed to gamma radiation, transforms into a green-skinned behemoth when he experiences intense anger or emotional stress. As the Hulk, Banner possesses immense superhuman strength and durability, making him a formidable force. Despite his raw power, Hulk's struggle with his dual nature and attempts to control his anger are central themes in his stories.")

let aquaman = Superhero(name: "Aquaman", realName: "Arthur Curry", imageName: "aquaman", city: "Atlantis", job: "King of the Seas", cordinate: Cordinate(latitude: -27.250982858485166, longitude: -15.597790793084965), info: "Aquaman is a fictional superhero published by DC Comics. Created by writer Mort Weisinger and artist Paul Norris, Aquaman first appeared in More Fun Comics #73 in 1941. The character's real name is Arthur Curry, and he is often referred to as the King of Atlantis. As a half-human, half-Atlantean, Aquaman possesses the ability to communicate with sea creatures, swim at incredible speeds, and has enhanced strength and durability due to his Atlantean heritage. He is a founding member of the Justice League and plays a crucial role in defending both the ocean and the surface world.")

let flash = Superhero(name: "Flash", realName: "Barry Allen", imageName: "flash", city: "Central City", job: "Forensic Scientist", cordinate: Cordinate(latitude: 39.800512640833894, longitude: -105.5147838963449), info: "The Flash is a fictional superhero appearing in DC Comics. Created by writer Gardner Fox and artist Harry Lampert, the character first appeared in Flash Comics #1 in 1940. The Flash's real name is Barry Allen, a forensic scientist who gains superhuman speed after being struck by lightning and doused with chemicals in his lab. With his newfound abilities, he becomes the Scarlet Speedster, protecting Central City as a member of the Justice League. The Flash can run at incredible velocities, vibrate through solid matter, and manipulate time using his speed, making him one of the fastest characters in the DC Universe.")

let captainAmerica = Superhero(name: "Captain America", realName: "Steve Rogers", imageName: "captainamerica", city: "New York", job: "Super Soldier", cordinate: Cordinate(latitude: 40.72703794724936, longitude: -73.9989177642422), info: "Captain America is a fictional superhero published by Marvel Comics. Created by writer Joe Simon and artist Jack Kirby, Captain America first appeared in Captain America Comics #1 in 1941. The character's real name is Steve Rogers, a frail young man who is enhanced to the peak of human physicality by an experimental serum during World War II. Wearing a patriotic costume and armed with a vibranium shield, Captain America becomes a symbol of freedom and justice, leading the fight against the forces of tyranny. He is a founding member of the Avengers and continues to be a prominent figure in the Marvel Universe.")

let superHeroArray = [batman, spiderman, superman, ironMan, hulk, aquaman, flash, captainAmerica]

