//
//  StateStatsView.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 17/05/21.
//

import SwiftUI

struct StateStatsView: View {
    let flagName: String
    let stateName: String
    let amount: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(flagName)
                .resizable()
                .frame(width: 40, height: 30)
            Text(stateName)
                .font(.custom("TravelingTypewriter", size: 30))
                .bold()
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("TOTAL")
                    .foregroundColor(.red)
                    .font(.custom("TravelingTypewriter", size: 20))
                    
                Text(amount)
                    .font(.custom("TravelingTypewriter", size: 15))
            }
        }.padding()
        
    }
}

struct StateStatsView_Previews: PreviewProvider {
    static var previews: some View {
        StateStatsView(flagName: "SP", stateName: "São Paulo", amount: "12131231")
    }
}
