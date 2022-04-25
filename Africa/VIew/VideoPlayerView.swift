//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 25.04.2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - Property
    var videoSelected: String
    var videoTitle: String
    // MARK: - Body
    var body: some View {
        VStack(){
            VideoPlayer(player: playVideo(filename: videoSelected, fileformat: "mp4"))
            {
                
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding()
            , alignment: .topLeading
            )
        }
        .tint(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
