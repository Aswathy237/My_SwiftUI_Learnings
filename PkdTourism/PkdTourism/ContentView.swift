//
//  ContentView.swift
//  PkdTourism
//
//  Created by 61086256 on 07/01/25.
//

import SwiftUI

struct ContentView: View {
    
    let places = [
        Places(name: "Nelliyampathy", photo: "nelliyampathy", distance: 2.5),
        Places(name: "Fort", photo: "fort", distance: 1.5),
        Places(name: "Kollengodu", photo: "kollengodu", distance: 4),
        Places(name: "Malampuzha", photo: "malampuzha", distance: 5.67),
        Places(name: "Parambikulam", photo: "parambikulam", distance: 8.76)
    ]
    var body: some View {
        NavigationStack {
            List(places) {place in
                NavigationLink(value: place) {
                    PlaceViewCell(place: place)
                }
            }.navigationTitle("Places")
                .navigationDestination(for: Places.self) { Places in
                    PlacesDetailScreen(place: Places)
                }
        }
        
    }
    
}
#Preview {
    ContentView()
}

struct PlaceViewCell: View {
    let place: Places
    var body: some View {
        HStack {
            Image(place.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75,height: 75)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style:.continuous))
            
            VStack(alignment:.leading) {
                Text(place.name)
                Text("\(place.distance.formatted()) km")
            }
        }
    }
}
