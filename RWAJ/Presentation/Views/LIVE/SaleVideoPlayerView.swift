//
//  SaleVideoPlayerView.swift
//  RWAJ
//
//  Created by Kareem on 26/03/2025.
//


import SwiftUI
import AVKit

struct SaleVideoPlayerView: View {
    @State private var player: AVPlayer?
    
    var body: some View {
        VideoPlayer(player: player)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                let url = Bundle.main.url(forResource: "StreamVideo", withExtension: "mov")!
                player = AVPlayer(url: url)
                player?.play()
            }
            .onDisappear {
                player?.pause()
                player = nil
            }
    }
}
