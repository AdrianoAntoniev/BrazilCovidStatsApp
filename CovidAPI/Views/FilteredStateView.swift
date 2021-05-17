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
                Section(header: Text("CASOS CONFIRMADOS")) {
                    VStack {
                        Text("Estado com mais casos confirmados")
                            .font(.caption)
                        StateStatsView(flagName: data.maxCasesState().uf,
                                       stateName: data.maxCasesState().name,
                                       amount: data.maxCasesState().amountOfCases)
                        
                        Text("Estado com menos casos confirmados")
                            .font(.caption)
                        StateStatsView(flagName: data.minCasesState().uf,
                                       stateName: data.minCasesState().name,
                                       amount: data.minCasesState().amountOfCases)
                    }
                }
                            
                Section(header: Text("MORTES")) {
                    VStack {
                        Text("Estado com mais mortes confirmadas")
                            .font(.caption)
                        StateStatsView(flagName: data.maxDeathsState().uf,
                                       stateName: data.maxDeathsState().name,
                                       amount: data.maxDeathsState().deaths)
                        
                        Text("Estado com menos mortes confirmadas")
                            .font(.caption)
                        StateStatsView(flagName: data.minDeathsState().uf,
                                       stateName: data.minDeathsState().name,
                                       amount: data.minDeathsState().deaths)
                    }
                }
                                                        
                Section(header: Text("CASOS SUSPEITOS")) {
                    VStack {
                        Text("Estado com mais casos suspeitos de Covid-19")
                            .font(.caption)
                        StateStatsView(flagName: data.maxSuspectsState().uf,
                                       stateName: data.maxSuspectsState().name,
                                       amount: data.maxSuspectsState().suspects)
                        
                        Text("Estado com menos casos suspeitos de Covid-19")
                            .font(.caption)
                        StateStatsView(flagName: data.minSuspectsState().uf,
                                       stateName: data.minSuspectsState().name,
                                       amount: data.minSuspectsState().suspects)
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
