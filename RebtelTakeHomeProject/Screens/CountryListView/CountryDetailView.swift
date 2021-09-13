//
//  CountryDetailView.swift
//  RebtelTakeHomeProject
//
//  Created by Sebastian Mendez on 2021-09-12.
//

import SwiftUI

struct CountryDetailView: View {
        
    var country: Country
    @Binding var isShowingDetails: Bool
    
    var body: some View {
        VStack {
            Image(country.alpha2Code.lowercased())
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 225)
            
            VStack {
                Text(country.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Capital: \(country.capital)")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    CountryInfo(title: "Region", value: country.region)
                    CountryInfo(title: "Population", value: String(country.population))
                    CountryInfo(title: "Area", value: String(country.area ?? 0))
                }
                
                Spacer()
                
                VStack(spacing: 5) {
                    Text("Languages:")
                        .font(.body)
                        .multilineTextAlignment(.center)
                    
                    ForEach(country.languages, id: \.id) { language in
                        Text(language.name)
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
                
                Spacer()
            }
            
            Spacer()
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetails = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
        
    }
}

struct CountryInfo: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .font(.caption)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
