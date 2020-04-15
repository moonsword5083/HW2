//
//  Member.swift
//  hw2
//
//  Created by User16 on 2020/4/15.
//  Copyright © 2020 Barton. All rights reserved.
//

import Foundation
struct Member: Identifiable{
    var id = UUID()
    var picname: [String]
    var name: String
    var content: String
}
