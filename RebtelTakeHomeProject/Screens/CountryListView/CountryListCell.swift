//
//  CountryListCell.swift
//  RebtelTakeHomeProject
//
//  Created by Sebastian Mendez on 2021-09-12.
//

import SwiftUI

struct CountryListCell: View {
    let country: Country
    
    var body: some View {
        VStack {
            Image(country.alpha2Code.lowercased())
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            Spacer()
            
            Text(country.name)
                .foregroundColor(.primary)
                .font(.body)
                .lineLimit(2)
            
            Spacer()
        }
    }
}
