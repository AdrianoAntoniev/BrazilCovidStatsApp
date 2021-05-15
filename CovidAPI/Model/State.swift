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
        self.amountOfCases = Self.formatNumber(data.cases)
        self.deaths = Self.formatNumber(data.deaths)
        self.suspects = Self.formatNumber(data.suspects)
        self.dayOfInfo = Self.formatDate(data.datetime)
    }
    
    private static func formatNumber(_ number: Int) -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "pt-BR")
        
        return formatter.string(from: NSNumber(value: number)) ?? "0"
    }
    
    private static func formatDate(_ date: String) -> String {
        let dateConvertedString = date.prefix(10) // 2021-02-26
                
        let dayString = dateConvertedString.suffix(2) // 26
        let monthString = dateConvertedString.prefix(7).suffix(2) // 2021-02, 02
        let yearString = dateConvertedString.prefix(4) // 02
        
        
        return "\(dayString)/\(monthString)/\(yearString)"                
    }
}

