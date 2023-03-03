//
//  Model.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 01/03/23.
//

import Foundation

struct FeedModel {
    
    let id = UUID()
    let posterName: String
    let posterImage: String
    let userName: String
    let tweetString:String
    let tweetImage: String
    let postedAgo: String
    let replyCount: Int
    let retweetCount: Int
    let likeCount: Int
    let viewCount: Int
    
    init(posterName: String, posterImage: String, userName: String, tweetString: String, tweetImage: String, postedAgo: String, replyCount: Int, retweetCount: Int, likeCount: Int, viewCount: Int) {
        self.posterName = posterName
        self.posterImage = posterImage
        self.userName = userName
        self.tweetString = tweetString
        self.tweetImage = tweetImage
        self.postedAgo = postedAgo
        self.replyCount = replyCount
        self.retweetCount = retweetCount
        self.likeCount = likeCount
        self.viewCount = viewCount
    }
        
}

let tweetPlaceholder = """
In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.
"""

let post1 = FeedModel(posterName: "Arthur", posterImage: "arthur", userName: "ddd", tweetString: tweetPlaceholder, tweetImage: "8", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post2 = FeedModel(posterName: "Dutch", posterImage: "dutch", userName: "ddd", tweetString: tweetPlaceholder, tweetImage: "13", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post3 = FeedModel(posterName: "John", posterImage: "john", userName: "ddd", tweetString: tweetPlaceholder, tweetImage: "12", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post4 = FeedModel(posterName: "Micah", posterImage: "micah", userName: "ddd", tweetString: tweetPlaceholder, tweetImage: "7", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post5 = FeedModel(posterName: "Dev", posterImage: "1", userName: "ddd", tweetString: "Hello", tweetImage: "9", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post6 = FeedModel(posterName: "Dev", posterImage: "2", userName: "ddd", tweetString: "Hello", tweetImage: "7", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post7 = FeedModel(posterName: "Dev", posterImage: "3", userName: "ddd", tweetString: "Hello", tweetImage: "2", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post8 = FeedModel(posterName: "Dev", posterImage: "5", userName: "ddd", tweetString: "Hello", tweetImage: "3", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)
let post9 = FeedModel(posterName: "Dev", posterImage: "8", userName: "ddd", tweetString: "Hello", tweetImage: "8", postedAgo: "12h", replyCount: 12, retweetCount: 342, likeCount: 5460, viewCount: 16)


