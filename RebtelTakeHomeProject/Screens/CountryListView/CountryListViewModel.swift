//
//  CountryListViewModel.swift
//  RebtelTakeHomeProject
//
//  Created by Sebastian Mendez on 2021-09-12.
//

import SwiftUI

final class CountryListViewModel: ObservableObject {
    @Published var countries: [Country] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedCountry: Country?
    
    func getCountrys() {
        DispatchQueue.main.async {
            self.isLoading = true
        }
        
        NetworkManager.shared.getCountries { [self] result in
            
            DispatchQueue.main.async {
                self.isLoading = false
                
                switch result {
                case .success(let countries):
                    self.countries = countries
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}

