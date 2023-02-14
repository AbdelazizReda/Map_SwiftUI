//
//  LocationView.swift
//  Map_SwiftUI
//
//  Created by Abdelaziz Reda on 13/02/2023.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @EnvironmentObject var vm: LocationViewModel
    //rejon
   
    
    var body: some View {

//        List{
//            ForEach(vm.locations) {
//                Text($0.name)
//            }
//        }
        
        Map(coordinateRegion: $vm.mapRegion)
            .ignoresSafeArea()
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}
