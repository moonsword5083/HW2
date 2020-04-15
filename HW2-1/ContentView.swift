//
//  ContentView.swift
//  HW2-1
//
//  Created by Barton on 2020/4/15.
//  Copyright © 2020 NTOU. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                CharacterView()
            }
            .onAppear{
                UITableView.appearance().separatorColor = .clear
            }
            .navigationBarTitle("幹員")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CharacterView: View {
    let names = [["艾雅法拉", "黑"], ["闪灵", "年"], ["推进之王", "斯卡蒂"]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    var body: some View {
        ForEach(0..<names.count){(row) in
            ScrollView(.vertical){
                HStack(spacing: 10){
                    CharacterSecond(row: row)
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        }
        .padding()
    }
}

struct CharacterSecond: View {
    let names = [["艾雅法拉", "黑"], ["闪灵", "年"], ["推进之王", "斯卡蒂"]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    var row: Int
    var body: some View {
        ForEach(0..<self.names[self.row].count){(column) in
            NavigationLink(destination: MemberDetail(member: member[(self.row*2)+column])) {
                CharacterImage(row: self.row, column: column)
            }
        }
    }
}

struct CharacterImage: View {
    let names = [["艾雅法拉", "黑"], ["闪灵", "年"], ["推进之王", "斯卡蒂"]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    var row: Int
    var column: Int
    var body: some View {
                VStack {
                    Image(self.names[self.row][self.column])
                       .renderingMode(.original)
                       .resizable()
                       .frame(width: 190, height: self.photoWidth)
                       .background(Image("背景").renderingMode(.original).resizable().scaledToFill().opacity(0.8))
                       .clipShape(Circle())
                       .overlay(Circle().stroke(Color.white))
                       .shadow(radius: 8)
                       .clipped()
                    Text(member[(self.row*2)+self.column].name)
                       .foregroundColor(Color(hue: 0.535, saturation: 0.752, brightness: 0.882))
                }
    }
}
