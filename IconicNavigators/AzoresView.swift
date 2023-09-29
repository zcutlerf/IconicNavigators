//
//  AzoresView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI

struct AzoresView: View {
    var body: some View {
        Image("azores")
            .resizable()
            .scaledToFit()
            .navigationTitle("The Azores")
    }
}

struct AzoresView_Previews: PreviewProvider {
    static var previews: some View {
        AzoresView()
    }
}
