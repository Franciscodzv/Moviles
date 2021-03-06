//
//  ContentView.swift
//  LiveListProject
//
//  Created by Francisco Diaz on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    
    var countryController = CountryContoller()
    
    var body: some View {
        NavigationView {
            
            List(countryController.countries){ country in
                
                NavigationLink(
                    destination: DetailView(country: country),
                    label: {
                        Text(country.name)
                    })

            }
            .navigationBarTitle("Countries", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: AddCountryView(cityName: "")) {
                Image(systemName: "plus.app.fill").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
