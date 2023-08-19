//
//  MapView.swift
//  SuperHeroBook
//
//  Created by Ahmet Tunahan Bekdaş on 8.08.2023.
//

import SwiftUI
import MapKit


// Map için bir "Region" oluşturduk

/* struct MapView: View {
    @State var region = MKCoordinateRegion(center: superHeroArray[0].cordinateLocation, span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8))

    var body: some View {
        Map(coordinateRegion: $region)
    }
}
*/

// UIKit tabanlı bir görünümü SwiftUI içersinde kullanılabilir hale getirmek için kullanılır
struct MapView: UIViewRepresentable {
    
    // Bu özellik haritanın gösteriliceği kordinatı tutar
    var coordinate: CLLocationCoordinate2D
    
    // Güncellemeler yapacağız içersine parametreler yazacağız
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        // Harita görünümünün görünen bölgesi güncellenir.
        uiView.setRegion(region, animated: true)
    }
    
    // Ne tarz bir UIKit kullanacağımızı yazacağız
    func makeUIView(context: Context) ->  MKMapView {
        MKMapView(frame: .zero)
    }
    
}

// SwiftUI önizlemeleri için kullanılır.
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superHeroArray[0].cordinateLocation)
    }
}
