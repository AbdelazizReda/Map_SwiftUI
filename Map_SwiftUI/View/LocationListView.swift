//
//  LocationListView.swift
//  Map_SwiftUI
//
//  Created by Abdelaziz Reda on 14/02/2023.
//

import SwiftUI

struct LocationListView: View {
    @EnvironmentObject var VM:LocationViewModel
    
    var body: some View {
        List{
            ForEach(VM.locations){ location in
                Button {
                    VM.showNextLocation(location: location)
                } label: {
                    locationListView(location: location)
                }

                
                    .padding(.vertical, 5)
//                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())

    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
            .environmentObject(LocationViewModel())
    }
    
}


extension LocationListView {
    
    func locationListView(location:LocationData) -> some View{
        
        HStack{
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45 , height: 45)
                    .cornerRadius(10)
            }
            VStack(alignment: .leading){
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)

                
            }
            .frame(maxWidth: .infinity , alignment: .leading)
            
        }
        
        
        
        
    }
    
    
    
    
    
}
