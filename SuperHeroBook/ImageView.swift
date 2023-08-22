//
//  ImageView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 11.08.2023.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    
    var body: some View {
                image
                   .resizable()
                   .aspectRatio(contentMode: .fit) // Tam sığdır
                   .clipShape(Circle()) // Yuvarlak yap
                   .overlay(Circle().stroke(Color.blue, lineWidth: 4)) // Çerçeve ekle
                   .shadow(radius: 15) // Gölge ekle
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("batman"))
    }
}
