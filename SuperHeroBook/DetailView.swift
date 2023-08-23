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
        NavigationView{
            VStack{
                
                MapView(coordinate: choiceHero.cordinateLocation)
                    .frame( height: UIScreen.main.bounds.height * 0.4)
                    .edgesIgnoringSafeArea(.top)
                
                
                
                ImageView(image: Image(choiceHero.imageName))
                    .offset(y: UIScreen.main.bounds.height * -0.20)
                    .frame(width: 300, height: 300)
                
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
                            .foregroundColor(.gray)

                        
                        Spacer()
                        
                        Text(choiceHero.city)
                            .foregroundColor(.gray)

                    }
                    .font(.title2)
                    
                    
                    
                }
                .padding()
                .offset(y: UIScreen.main.bounds.height * -0.29)
                Spacer()
                
                VStack{
                    Text(choiceHero.info)
                        .multilineTextAlignment(.center) // Metni altsatıra hizalama
                        .offset(y:UIScreen.main.bounds.height * -0.25)
                        .font(.system(size: 15)) // Yazı boyutunu ayarlama

                        
                        
                }
                .frame(width: 350,height:UIScreen.main.bounds.height / 3)
                

            }
            

            
            
            }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(choiceHero: flash)
    }
}

