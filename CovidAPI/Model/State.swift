//
//  UF.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 10/05/21.
//

import Foundation

struct State: Hashable, Identifiable {
    let uf: String
    let name: String
    let amountOfCases: Int
    let deaths: Int
    let suspects: Int
//    let refuses: Int
    let dayOfInfo: String
    
    var id: String {
        return uf
    }
    
    init(from data: StateData) {
        self.uf = data.uf
        self.name = data.state
        self.amountOfCases = data.cases
        self.deaths = data.deaths
        self.suspects = data.suspects
        self.dayOfInfo = data.datetime        
    }
}

