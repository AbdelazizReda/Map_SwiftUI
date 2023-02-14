//
//  LocationsViewModel.swift
//  Map_SwiftUI
//
//  Created by Abdelaziz Reda on 13/02/2023.
//

import Foundation
import MapKit

class LocationViewModel: ObservableObject{
    
    @Published var locations:[LocationData]
    @Published var mapLocation: LocationData{
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
    @Published var mapRegion:MKCoordinateRegion = MKCoordinateRegion()
    @Published var mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)



    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    //update map
    func updateMapLocation(location:LocationData){
        mapRegion = MKCoordinateRegion(center: location.coordinates , span: mapSpan)
    }
    
    
    //update map
   private func updateMapRegion(location:LocationData){
//        withAnimation(.easeInOut){
//            mapRegion = MKCoordinateRegion(center: location.coordinates , span: mapSpan)
//
//        }
       mapRegion = MKCoordinateRegion(center: location.coordinates , span: mapSpan)

    }
    
    
}
