//
//  CountryController.swift
//  LiveListProject
//
//  Created by Francisco Diaz on 5/6/21.
//

import Foundation


class CountryContoller: ObservableObject{
    
    @Published var countries: [CountryModel]
    
    init() {
        self.countries = [
            CountryModel(id: UUID(), name: "England", population: "56M"),
            CountryModel(id: UUID(), name: "Mexico", population: "128M"),
            CountryModel(id: UUID(), name: "USA", population: "328M"),
            CountryModel(id: UUID(), name: "Spain", population: "47M"),
            CountryModel(id: UUID(), name: "Japan", population: "126M"),
        ]
    }
    
    func addCountry(newCountry: CountryModel) {
        countries.append(newCountry)
    }
}
