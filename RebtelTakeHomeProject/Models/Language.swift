//
//  Language.swift
//  RebtelTakeHomeProject
//
//  Created by Sebastian Mendez on 2021-09-13.
//

import Foundation

struct Language: Decodable {
    var name: String
    var iso639_2: String
}

extension Language: Identifiable {
    var id: String { iso639_2 }
}
