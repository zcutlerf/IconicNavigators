//
//  PrinceHenryView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI

struct PrinceHenryView: View {
    var body: some View {
        NavigationStack {
            List {
                Image("henry")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200.0)
                
                Text("Dom Henrique of Portugal, Duke of Viseu (4 March 1394 – 13 November 1460), better known as Prince Henry the Navigator (Portuguese: Infante Dom Henrique, o Navegador), was a central figure in the early days of the Portuguese Empire and in the 15th-century European maritime discoveries and maritime expansion. Through his administrative direction, he is regarded as the main initiator of what would be known as the Age of Discovery. Henry was the fourth child of King Dom John I of Portugal, who founded the House of Aviz.")
                
                Section("Explorations") {
                    NavigationLink {
                        MadeiraView()
                    } label: {
                        Label("Madeira", systemImage: "house")
                    }
                    
                    NavigationLink {
                        AzoresView()
                    } label: {
                        Label("The Azores", systemImage: "mountain.2")
                    }
                    
                    NavigationLink {
                        CaboBlancoView()
                    } label: {
                        Label("Cabo Blanco", systemImage: "water.waves")
                    }
                }
            }
            .navigationTitle("Henry the Navigator")
        }
    }
}

struct PrinceHenryView_Previews: PreviewProvider {
    static var previews: some View {
        PrinceHenryView()
    }
}
