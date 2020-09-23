//
//  PostError.swift
//  Reddit
//
//  Created by Brenden Smith on 9/23/20.
//

import Foundation

enum PostError: LocalizedError {
    case invalidURL
    case noData
    case thrownError(Error)
    case thrownImageError(Error)
    case unableToDecode
    
    var errorDescription: String {
        switch self {
        
        case .invalidURL:
            return "The server failed to reach the URL."
        case .noData:
            return "No data found."
        case .thrownError(let error):
            return "There was an error: \(error.localizedDescription)"
        case .thrownImageError(let error):
            return "There was an error fetching the thumbnail image: \(error.localizedDescription)"
        case .unableToDecode:
            return "There was an error decoding the data."
        }
    }
}


