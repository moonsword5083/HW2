//
//  SongRow.swift
//  hw2
//
//  Created by Barton on 2020/4/14.
//  Copyright © 2020 Barton. All rights reserved.
//

import SwiftUI

struct SongRow: View {
    var song: Song
    var body: some View {
        HStack{
            songImage(song: song)
            VStack(alignment: .leading){
                Text(song.activity)
                Text(song.date)
            }
            Spacer()
        }
    }
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        SongRow(song: songs[0])
            .previewLayout(.sizeThatFits)
    }
}
		

struct songImage: View {
    var song: Song
    var body: some View {
        Image(song.picname)
            .resizable()
            .scaledToFill()
            .frame(width: 80,height: 80)
            .clipped()
    }
}
