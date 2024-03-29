//
//  TweetFilterViewModel.swift
//  TwiterSwiftUI
//
//  Created by eunji on 2022/05/27.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes : return "Likes"
        }
    }
}
