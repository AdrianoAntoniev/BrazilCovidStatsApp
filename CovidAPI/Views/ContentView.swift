//
//  ContentView.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 10/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StatesListView()
                .tabItem {
                    Image(systemName: "list.triangle")
                    Text("LISTA DE ESTADOS")
                }
            
            FilteredStateView()
                .tabItem {
                    Image(systemName: "doc.text.below.ecg")
                    Text("DADOS AGRUPADOS")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
