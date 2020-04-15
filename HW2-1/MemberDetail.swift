//
//  MemberDerail.swift
//  hw2
//
//  Created by User16 on 2020/4/15.
//  Copyright © 2020 Barton. All rights reserved.
//

import SwiftUI

struct MemberDetail: View {
    var member: Member
    var body: some View {
        VStack{
            MemberImage(member: member)
            Text(member.speak)
                .padding()
            Text(member.content)
                .padding()
        }
        .navigationBarTitle(member.name)
    }
}

struct MemberDetail_Previews: PreviewProvider {
    static var previews: some View {
        MemberDetail(member: member[0])
    }
}

struct MemberImage: View {
    var member: Member
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 10){
                ForEach(0..<member.picname.count){(index) in
                Image(self.member.picname[index])
                .resizable()
                .scaledToFit()
                .frame(width: 380)
                .clipped()
                }
            }
        }
    }
}

