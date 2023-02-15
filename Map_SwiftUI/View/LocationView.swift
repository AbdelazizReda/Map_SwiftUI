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

        ZStack{
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
            
            VStack(spacing:0){
                    header
                .padding()
                Spacer()
            }
        }
    }
}


struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}


extension LocationView {
    
    private var header:some View {
        VStack{
            Button(action: vm.toggleLocation) {
                Text(vm.mapLocation.name + ",  " + vm.mapLocation.cityName)
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .animation(.none, value: vm.mapLocation)
                    .cornerRadius(12)
                    .overlay(alignment:.leading){
                        Image(systemName: "arrow.down")
                            .font(.title3)
                            .foregroundColor(Color.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                        
                    }
                  
            }
            if vm.showLocationList{
                LocationListView()
            }
        }
        .cornerRadius(12)
        .shadow(color: Color(.black).opacity(0.4) , radius: 20, x: 0, y: 12)
  
    }
}
