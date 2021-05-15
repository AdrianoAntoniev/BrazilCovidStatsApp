//
//  LabelView.swift
//  CovidAPI
//
//  Created by Adriano Rodrigues Vieira on 14/05/21.
//

import SwiftUI

struct LabelView: View {
    let label: String
    let description: String
    
    var body: some View {
        HStack {
            Text(label)                
                .font(.title2)
            
            Spacer()
            
            Text(description)
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(label: "Deus", description: "Eh fiel")
    }
}
