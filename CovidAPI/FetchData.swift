//
//  FetchData.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 10/05/21.
//

import Foundation

class FetchData: ObservableObject {
    @Published var allStates: [State] = []
    
    init() {
        let urlString = "https://covid19-brazil-api.vercel.app/api/report/v2"
        
        if let safeUrl = URL(string: urlString) {
            URLSession.shared.dataTask(with: safeUrl) { data, response, error in
                guard let error = error else {
                    do {
                        if let safeData = data {
                            let data = try JSONDecoder().decode(StatesData.self, from: safeData)
                            
                            for aStateData in data.states {
                                self.allStates.append(State(from: aStateData))
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
}
