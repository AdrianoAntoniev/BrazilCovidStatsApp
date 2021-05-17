//
//  StatesListView.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 17/05/21.
//

import SwiftUI

struct StatesListView: View {
    @ObservedObject var data = FetchData.instance
    
    var body: some View {
        NavigationView {
            List(data.allStates, id: \.self) { state in
                HStack {
                    Image("\(state.uf)")
                        .resizable()
                        .frame(width: 40, height: 20)
                    
                    NavigationLink(state.name, destination: StateDetailView(state: state))
                }
            }.navigationBarTitle("Covid-19 no Brasil")
        }
    }
}

struct StatesListView_Previews: PreviewProvider {
    static var previews: some View {
        StatesListView()
    }
}
