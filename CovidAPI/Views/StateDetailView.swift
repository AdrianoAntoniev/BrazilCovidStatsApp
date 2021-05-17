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
                .font(.custom("TravelingTypewriter", size: 35))
                .bold()
                .padding()
            
            Image("\(state.uf)")
                .resizable()
                .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(Color.yellow)
                .padding(.bottom, 50)
                        
            
            VStack(alignment: .leading, spacing: 10) {
                LabelView(label: "Casos confirmados:", description: state.amountOfCases)
                Divider()
                
                LabelView(label: "Total de mortes:", description: state.deaths)
                Divider()
                
                LabelView(label: "Data da coleta das informações:", description: state.dayOfInfo)
                Divider()
            }.padding()
        }
    }
}

struct StateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailView(state: State(from: StateData(uf: "MG", state: "Minas Gerais", cases: 12345676543, deaths: 1234567, suspects: 12345678, datetime: "90sd0a9sd8fa0sd")))
    }
}
