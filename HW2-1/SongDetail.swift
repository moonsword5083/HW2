//
//  SongDetail.swift
//  hw2
//
//  Created by Barton on 2020/4/14.
//  Copyright © 2020 Barton. All rights reserved.
//

import SwiftUI

struct SongDetail: View {
    var song: Song
    var body: some View {
        VStack{
            SongImage(song: song)
            Text(song.content)
                .padding()
        }
        .navigationBarTitle(song.activity)
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song: songs[0])
    }
}

struct SongImage: View {
    var song: Song
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 10){
                Image(self.song.picname[1])
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .clipped()
            }
        }
    }
}
