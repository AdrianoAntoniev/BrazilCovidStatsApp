//
//  FilteredStateView.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 17/05/21.
//

import SwiftUI

struct FilteredStateView: View {
    @ObservedObject var data = FetchData.instance
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    VStack {
                        Text("Estado com mais casos confirmados")
                            .font(.custom("TravelingTypewriter", size: 15))
                        StateStatsView(flagName: data.maxCasesState().uf,
                                       stateName: data.maxCasesState().name,
                                       amount: data.maxCasesState().amountOfCases)
                                                
                        Divider()
                        
                        Text("Estado com menos casos confirmados")
                            .font(.custom("TravelingTypewriter", size: 15))
                        StateStatsView(flagName: data.minCasesState().uf,
                                       stateName: data.minCasesState().name,
                                       amount: data.minCasesState().amountOfCases)
                    }
                }
                            
                Section {
                    VStack {
                        Text("Estado com mais mortes confirmadas")
                            .font(.custom("TravelingTypewriter", size: 15))
                        StateStatsView(flagName: data.maxDeathsState().uf,
                                       stateName: data.maxDeathsState().name,
                                       amount: data.maxDeathsState().deaths)
                        
                        Divider()
                        
                        Text("Estado com menos mortes confirmadas")
                            .font(.custom("TravelingTypewriter", size: 15))
                        StateStatsView(flagName: data.minDeathsState().uf,
                                       stateName: data.minDeathsState().name,
                                       amount: data.minDeathsState().deaths)
                    }
                }                                                                        
            }.navigationBarTitle("Dados de \(data.allStates.first?.dayOfInfo ?? "hoje")")
        }
    }
}

struct FilteredStateView_Previews: PreviewProvider {
    static var previews: some View {
        FilteredStateView()
    }
}
