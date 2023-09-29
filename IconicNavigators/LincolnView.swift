//
//  LincolnView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI

struct LincolnView: View {
    @State private var offset1 = -400.0
    @State private var offset2 = 400.0
    @State private var offset3 = -800.0
    
    private var animation: Animation {
        .easeIn
        .speed(0.3)
        .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("lincolnnavigator1")
                    .resizable()
                    .scaledToFit()
                    .offset(x: offset1)
                Image("lincolnnavigator2")
                    .resizable()
                    .scaledToFit()
                    .offset(x: offset2)
                Image("lincolnnavigator3")
                    .resizable()
                    .scaledToFit()
                    .offset(x: offset3)
            }
            .navigationTitle("Lincoln Navigator")
            .onAppear {
                AudioPlayer.playBackground(sound: "vroom", type: "mp3")
                withAnimation(animation) {
                    offset1 += 800.0
                    offset2 -= 900.0
                    offset3 += 1400.0
                }
            }
            .onDisappear {
                AudioPlayer.stop()
            }
        }
    }
}

struct LincolnView_Previews: PreviewProvider {
    static var previews: some View {
        LincolnView()
    }
}
