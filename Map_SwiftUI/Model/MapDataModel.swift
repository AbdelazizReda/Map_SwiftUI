//
//  MapDataModel.swift
//  Map_SwiftUI
//
//  Created by Abdelaziz Reda on 13/02/2023.
//

import Foundation
import MapKit

struct LocationData: Identifiable {

    
    let name:String
    let cityName:String
    let coordinates:CLLocationCoordinate2D
    let description:String
    let imageNames:[String]
    let link:String
    var id: String{
        cityName + name
    }
   
}
