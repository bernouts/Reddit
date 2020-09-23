//
//  Post.swift
//  Reddit
//
//  Created by Brenden Smith on 9/23/20.
//

import Foundation

struct TopLeveLDictionary: Decodable {
    let data: SecondLevelDictionary
}

struct SecondLevelDictionary: Decodable {
    let children: [ThirdLevelObject]
}

struct ThirdLevelObject: Decodable {
    let data: Post
}

struct Post: Decodable {
    let title: String
    let thumbnail: URL?
    let ups: Int
}



