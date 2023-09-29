//
//  ZeldaNaviView.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import SwiftUI

struct ZeldaNaviView: View {
    @State private var rotation = -10.0
    
    private var animation: Animation {
        .easeInOut
        .speed(0.2)
        .repeatForever(autoreverses: true)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text("Watch Out!")
                        .font(.title)
                        .foregroundColor(.cyan)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 10.0)
                                .colorInvert()
                                .shadow(radius: 7.0)
                        }
                        .padding(.horizontal)
                }
                
                Button {
                    AudioPlayer.playOneSound(sound: "watchOut", type: "mp3")
                } label: {
                    Image("navi")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(Angle(degrees: rotation))
                        .shadow(color: .white.opacity(0.7), radius: 40.0)
                }
                
                Spacer()
            }
            .background {
                Image("zeldabackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.top)
            }
            .navigationTitle("Navi from Zelda")
            .onAppear {
                withAnimation(animation) {
                    rotation = 10.0
                }
            }
        }
    }
}

struct ZeldaNaviView_Previews: PreviewProvider {
    static var previews: some View {
        ZeldaNaviView()
    }
}
