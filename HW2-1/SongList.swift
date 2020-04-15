//
//  SongList.swift
//  hw2
//
//  Created by Barton on 2020/4/14.
//  Copyright © 2020 Barton. All rights reserved.
//

import SwiftUI

struct SongList: View {
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("近期活動")){
                    ScrollView(.horizontal){
                        HStack(spacing: 10){
                            ForEach(nowSongs){(index) in
                                NavigationLink(destination: SongDetail(song: index)){
                                    Image(index.picname)
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFit()
                                        .clipped()
                                }
                            }
                        }
                        .frame(height:250)
                    }                }
                
                Section(header: Text("大型活動")){
                    ForEach(songs){(index) in
                        NavigationLink(destination: SongDetail(song: index)){
                            SongRow(song: index)
                        }
                    }
                }
                
                Section(header: Text("微型故事集")){
                    ForEach(storySongs){(index) in
                        NavigationLink(destination: SongDetail(song: index)){
                            SongRow(song: index)
                        }
                    }
                }
                
                Section(header: Text("危機活動")){
                    ForEach(crisisSongs){(index) in
                        NavigationLink(destination: SongDetail(song: index)){
                            SongRow(song: index)
                        }
                    }
                }
            }.navigationBarTitle("明日方舟活動")
        }
        /*NavigationView{
            List(songs.indices){(index) in
                NavigationLink(destination: SongDetail(song: songs[index])){
                    SongRow(song: songs[index])
                }
            }
        .navigationBarTitle("大型活動")
        }*/
    }
}

struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
    }
}
