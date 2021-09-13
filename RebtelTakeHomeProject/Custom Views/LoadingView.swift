//
//  LoadingView.swift
//  RebtelTakeHomeProject
//
//  Created by Sebastian Mendez on 2021-09-12.
//

import SwiftUI

struct LoadingView: View {
    var body: some View  {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(2)
        }
    }
}
