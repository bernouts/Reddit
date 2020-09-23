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
}
