//
//  MapView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 8.08.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State var region = MKCoordinateRegion(center: superHeroArray[0].cordinateLocation, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
