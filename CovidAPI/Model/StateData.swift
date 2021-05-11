//
//  StateData.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 10/05/21.
//

import Foundation

struct StatesData: Codable {
    let states: [StateData]
    
    enum CodingKeys: String, CodingKey {
        case states = "data"
    }
}

struct StateData: Codable {
    let uf: String
    let state: String
    let cases: Int
    let deaths: Int
    let suspects: Int
    // let refuses: Int
    let datetime: String
}
