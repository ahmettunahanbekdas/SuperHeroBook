//
//  ContentView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 8.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack { // Tüm arka planı saran ZStack
                Color.gray.edgesIgnoringSafeArea(.all) // Gri arka plan
                
                VStack {
                    List(superHeroArray) { hero in
                        NavigationLink(destination: {
                            // Hedef sayfaya yönlendirme
                        }, label: {
                            HStack {
                                Image(hero.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(60)
                                    .frame(width: 150, height: 180)
                                    .padding(.leading, 10)
                                
                                Spacer()
                                
                                VStack(spacing: 10) {
                                    Text(hero.name)
                                        .font(Font.custom("Arial", size:20))
                                        .frame(width: 180, height: 0, alignment: .center)
                                        .bold()
                                    
                                    Text(hero.realName)
                                        .font(Font.custom("Arial", size: 16))
                                        .frame(width: 150, height: 30, alignment: .center)
                                }
                            }
                            .frame(width: 300, height: 110, alignment: .center)
                        })
                        .navigationTitle("Super Hero Book")
                    }
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
