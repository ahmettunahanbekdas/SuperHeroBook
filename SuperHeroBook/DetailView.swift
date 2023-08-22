//
//  DetailView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 11.08.2023.
//

import SwiftUI
import CoreLocation

struct DetailView: View {
    var choiceHero: Superhero // choiceHero değişkeni SuperHerodan kalıtım aldı
    
    var body: some View {
        VStack{
            
            MapView(coordinate: choiceHero.cordinateLocation)
                .frame( height: UIScreen.main.bounds.height * 0.4)
                .edgesIgnoringSafeArea(.top)
            
            
            
            ImageView(image: Image(choiceHero.imageName))
                .offset(y: UIScreen.main.bounds.height * -0.23)
                .frame(width: 250, height: 250)
            
            Spacer()
            
            VStack{
                HStack{
                    Text(choiceHero.name)
                        .foregroundColor(.red)
                    
                    Spacer()
                    
                    Text(choiceHero.realName)
                        .foregroundColor(.blue)
                }
                .font(.largeTitle)
                
                HStack{
                    Text(choiceHero.job)
                    
                    Spacer()
                    
                    Text(choiceHero.city)
                }
                .font(.title2)
                

            }
            .padding()
            .offset(y: UIScreen.main.bounds.height * -0.33)
            
            
            
            
        }
        
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(choiceHero: spiderman  )
        }
    }
}
