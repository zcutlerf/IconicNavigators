//
//  CaboBlancoView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI

struct CaboBlancoView: View {
    var body: some View {
        Image("caboblanco")
            .resizable()
            .scaledToFit()
            .navigationTitle("Cabo Blanco")
    }
}

struct CaboBlancoView_Previews: PreviewProvider {
    static var previews: some View {
        CaboBlancoView()
    }
}
