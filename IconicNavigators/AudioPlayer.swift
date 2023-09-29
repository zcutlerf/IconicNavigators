//
//  AudioPlayer.swift
//  IconicNavigators
//
//  Created by Zoe Cutler on 9/29/23.
//

import AVFoundation

class AudioPlayer {
    static var audioPlayer: AVAudioPlayer?
    
    static func playOneSound(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback)
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch {
                print("error playing sound: \(error.localizedDescription)")
            }
        }
    }
    
    static func playBackground(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback)
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.play()
            } catch {
                print("error playing sound: \(error.localizedDescription)")
            }
        }
    }
    
    static func stop() {
        audioPlayer?.stop()
        audioPlayer?.currentTime = 0.0
    }
}
