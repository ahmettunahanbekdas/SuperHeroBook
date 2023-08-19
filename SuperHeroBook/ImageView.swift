//
//  ImageView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 11.08.2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        Image("batman")
            .resizable()
            .aspectRatio( contentMode: .fit)
            .frame(width: UIScreen.main.bounds.height * 0.30, height: UIScreen.main.bounds.width * 0.30)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
