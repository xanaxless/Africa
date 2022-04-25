//
//  VideoListView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 22.04.2022.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - Property
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium )
    // MARK: - Body
    var body: some View {
        NavigationView {
            List{
                ForEach(videos){ video in
                    NavigationLink {
                        VideoPlayerView(videoSelected: video.id, videoTitle: video.name)
                    } label: {
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                    }

                    
                }
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath" )
                    }

                }
            }
        }// Navigation
    }
}

// MARK: - Preview
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
