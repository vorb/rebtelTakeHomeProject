//
//  CountryListView.swift
//  RebtelTakeHomeProject
//
//  Created by Sebastian Mendez on 2021-09-12.
//

import SwiftUI

struct CountryListView: View {
    
    @StateObject private var viewModel = CountryListViewModel()
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: layout, spacing: 8) {
                        ForEach(viewModel.countries, id: \.id) { country in
                            CountryListCell(country: country)
                                .onTapGesture {
                                    viewModel.selectedCountry = country
                                    viewModel.isShowingDetail = true
                                }
                                .frame(width: 100, height: 160)
                        }
                    }
                }
                .disabled(viewModel.isShowingDetail)
                .navigationTitle("Countries")
            }
            .onAppear {
                viewModel.getCountrys()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                CountryDetailView(country: viewModel.selectedCountry!,
                                    isShowingDetails: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}
