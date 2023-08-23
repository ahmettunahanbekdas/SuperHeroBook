//
//  ListView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 22.08.2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            HStack{
                List(superHeroArray) { superHero in
                    NavigationLink(destination: DetailView(choiceHero: superHero), label: {
                        HStack {
                            Image(superHero.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(60)
                                .frame(width: 150, height: 180)
                                .padding(.leading, 10)
                            
                            Spacer()
                            
                            VStack(spacing: 10) {
                                Text(superHero.name)
                                    .font(Font.custom("Arial", size:20))
                                    .frame(width: 180, height: 0, alignment: .center)
                                    .bold()
                                
                                Text(superHero.realName)
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
