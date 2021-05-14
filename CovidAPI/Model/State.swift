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
    let amountOfCases: String
    let deaths: String
    let suspects: String
//    let refuses: Int
    let dayOfInfo: String
    
    var id: String {
        return uf
    }
    
    init(from data: StateData) {
        self.uf = data.uf
        self.name = data.state
        self.amountOfCases = Self.format(number: data.cases)
        self.deaths = Self.format(number: data.deaths)
        self.suspects = Self.format(number: data.suspects)
        self.dayOfInfo = data.datetime        
    }
    
    private static func format(number: Int) -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "pt-BR")
        
        return formatter.string(from: NSNumber(value: number)) ?? "0"
    }
}

