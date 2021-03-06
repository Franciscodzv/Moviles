//
//  ContentView.swift
//  LiveListProject
//
//  Created by Francisco Diaz on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var countryController = CountryContoller()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(countryController.countries){ country in
                    NavigationLink(
                        destination: DetailView(country: country),
                        label: {
                            Text(country.name)
                        })
                }.onDelete(perform: { indexSet in
                    self.countryController.countries.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Countries", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: AddCountryView().environmentObject(countryController)) {
                Image(systemName: "plus.app.fill").foregroundColor(.red)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
