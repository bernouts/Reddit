//
//  ModelController.swift
//  Reddit
//
//  Created by Brenden Smith on 9/23/20.
//

import Foundation

//https://www.reddit.com/r/funny/.json
class PostController {
    
    struct StringConstants {
        fileprivate static let baseURL = "https://www.reddit.com"
        fileprivate static let rEndpoint = "r"
        fileprivate static let funnyEndpoint = "funny"
        fileprivate static let jsonExtension = "json"
    }
    
    static func fetchPosts(completion: @escaping (Result <[Post], PostError>) -> Void) {
        guard let baseURL = URL(string: StringConstants.baseURL) else { return completion(.failure(.invalidURL)) }
        let rComponentURL = baseURL.appendingPathComponent(StringConstants.rEndpoint)
        let funnyComponentURL = rComponentURL.appendingPathComponent(StringConstants.funnyEndpoint)
        let finalURL = funnyComponentURL.appendingPathExtension(StringConstants.jsonExtension)
        print(finalURL)
    }
}
