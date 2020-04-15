//
//  AppView.swift
//  hw2
//
//  Created by Barton on 2020/4/14.
//  Copyright © 2020 Barton. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            SongList()
                .tabItem{
                    Image(systemName: "music.house.fill")
                    Text("活動介紹")
            }
            ContentView()
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("幹員")
            }
        }
        .accentColor(Color(hue: 0.535, saturation: 0.752, brightness: 0.882))
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
