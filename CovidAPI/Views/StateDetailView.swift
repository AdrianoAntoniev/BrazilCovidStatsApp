//
//  StateDetailView.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 10/05/21.
//

import SwiftUI

struct StateDetailView: View {
    let state: State
    
    var body: some View {
        VStack {
            Text("\(state.name) (\(state.uf))")
                .font(.title)
                .bold()
            
            Image("\(state.uf)")
                .resizable()
                .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(Color.yellow)
                .padding(.bottom, 100)
            
            
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Casos confirmados: \(state.amountOfCases)")
                Text("Total de mortes: \(state.deaths)")
                Text("Total de casos suspeitos: \(state.suspects)")
            }
        }
    }
}

struct StateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailView(state: State(from: StateData(uf: "MG", state: "Minas Gerais", cases: 12345676543, deaths: 1234567, suspects: 12345678, datetime: "90sd0a9sd8fa0sd")))
    }
}
