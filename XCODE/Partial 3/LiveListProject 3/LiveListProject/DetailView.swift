//
//  DetailView.swift
//  LiveListProject
//
//  Created by Francisco Diaz on 5/11/21.
//

import SwiftUI

struct DetailView: View {
    
    let country: CountryModel
    
    var body: some View {
        
        Text(country.name + "->" + country.population)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(country: CountryModel(id: UUID(), name: "This Country", population: "a lot"))
    }
}
