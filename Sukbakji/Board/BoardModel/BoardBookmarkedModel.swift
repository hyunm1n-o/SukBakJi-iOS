//
//  BoardBookmarkedModel.swift
//  Sukbakji
//
//  Created by KKM on 8/11/24.
//

import Foundation

// MARK: - BoardScrappedModel
struct BoardBookmarkedModel: Codable {
    let isSuccess: Bool
    let code, message: String
    let result: [BoardBookmarkedResult]
}

// MARK: - BoardBookmarkedResult
struct BoardBookmarkedResult: Codable {
    let postID: Int
    let title, content: String
    let views: Int
    let boardName, menu: String
    let commentCount: Int

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case title, content, views, boardName, menu, commentCount
    }
}