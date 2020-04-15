//
//  SongDetail.swift
//  hw2
//
//  Created by Barton on 2020/4/14.
//  Copyright © 2020 Barton. All rights reserved.
//

import SwiftUI

struct SongDetail: View {
    @State private var show = false
    var song: Song
    var body: some View {
        VStack{
            if show{
                HStack(spacing: 10){
                        Image(self.song.picname[1])
                            .resizable()
                            .scaledToFit()
                            .frame(height: 280)
                            .clipped()
                            .transition(.opacity)
                }
                Text(song.content)
                    .padding()
            }
            
        }
        .navigationBarTitle(song.activity)   .animation(.easeInOut(duration: 2))
        .onAppear{
            self.show = true
        }
    }

}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song: songs[0])
    }
}
