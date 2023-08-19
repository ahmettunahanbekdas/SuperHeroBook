//
//  DetailView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 11.08.2023.
//

import SwiftUI

struct DetailView: View {
    
    var selectHero: Superhero
    
    var body: some View {
        
        VStack{
            MapView(coordinate: selectHero.cordinateLocation)
                .frame( height: UIScreen.main.bounds.height * 0.30 )
                .padding(.top,10)
                 Spacer()
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectHero: superHeroArray[3])
    }
}
