//
//  FetchData.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 10/05/21.
//

import Foundation

class FetchData: ObservableObject {
    @Published var allStates: [State] = []
    static let instance = FetchData()
                        
    private init() {
        let urlString = "https://covid19-brazil-api.vercel.app/api/report/v2"
        
        if let safeUrl = URL(string: urlString) {
            URLSession.shared.dataTask(with: safeUrl) { data, response, error in
                guard let error = error else {
                    do {
                        if let safeData = data {
                            let data = try JSONDecoder().decode(StatesData.self, from: safeData)
                            
                            for aStateData in data.states {
                                DispatchQueue.main.async {
                                    self.allStates.append(State(from: aStateData))
                                }                                
                            }
                        }
                        
                    } catch {
                        print("Ooops! \(error.localizedDescription)")
                    }
                    return
                }
                
                print(error)
            }.resume()
        }        
    }
    
    func maxCasesState() -> State {
        return self.allStates.sorted { Int($0.amountOfCases)! > Int($1.amountOfCases)! }.first!
    }
    
    func minCasesState() -> State {
        return self.allStates.sorted { Int($0.amountOfCases)! < Int($1.amountOfCases)! }.first!
    }
    
    func maxDeathsState() -> State {    
        return self.allStates.sorted { Int($0.deaths)! > Int($1.deaths)! }.first!
    }
    
    func minDeathsState() -> State {
        return self.allStates.sorted { Int($0.deaths)! < Int($1.deaths)! }.first!
    }
    
    func maxSuspectsState() -> State {
        return self.allStates.sorted { Int($0.suspects)! > Int($1.suspects)! }.first!
    }
    
    func minSuspectsState() -> State {
        return self.allStates.sorted { Int($0.suspects)! < Int($1.suspects)! }.first!
    }
    
}
