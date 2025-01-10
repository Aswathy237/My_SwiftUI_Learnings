//
//  SwiftUIView.swift
//  PkdTourism
//
//  Created by 61086256 on 08/01/25.
//

import SwiftUI

struct PlacesDetailScreen: View {
    
    let place: Places
    @State private var zoomed: Bool = false
    var body: some View {
        VStack {
            Image(place.photo)
                .resizable()
                .aspectRatio(contentMode:zoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                    
                }
            Text(place.name)
                .font(.title)
            Text("\(place.distance.formatted()) km")
            Spacer()
        }.navigationTitle(place.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        PlacesDetailScreen(place: Places(name: "Fort", photo: "fort", distance: 1.5))
    }
}
