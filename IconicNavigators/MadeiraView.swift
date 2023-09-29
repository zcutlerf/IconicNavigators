//
//  MadeiraView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI

struct MadeiraView: View {
    var body: some View {
        Image("madeira")
            .resizable()
            .scaledToFit()
            .navigationTitle("Madeira")
    }
}

struct MadeiraView_Previews: PreviewProvider {
    static var previews: some View {
        MadeiraView()
    }
}
