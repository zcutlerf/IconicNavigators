//
//  AppleMapsView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI
import MapKit

struct MapKitView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.33, longitude: -83.05), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        NavigationStack {
            Map(coordinateRegion: $region)
                .navigationTitle("MapKit")
        }
    }
}

struct MapKitView_Previews: PreviewProvider {
    static var previews: some View {
        MapKitView()
    }
}
