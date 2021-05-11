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
        Text(state.name)
    }
}

struct StateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailView(state: State(from: StateData(uf: "AB", state: "Alabama", cases: 0, deaths: 0, suspects: 0, datetime: "90sd0a9sd8fa0sd")))
    }
}
