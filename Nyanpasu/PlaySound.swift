//
//  PlaySound.swift
//  Nyanpasu
//
//  Created by Josh Kennedy on 1/16/21.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playMySound() {
    guard let url = Bundle.main.url(forResource: "nyanpasu", withExtension: "wav") else { return }
    
    do {
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.prepareToPlay()
        audioPlayer?.play()
    }
    catch let error {
        print(error.localizedDescription)
    }
}
