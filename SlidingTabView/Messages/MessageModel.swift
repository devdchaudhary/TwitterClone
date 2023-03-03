//
//  MessageModel.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 03/03/23.
//

import Foundation

struct MessageModel {
    
    let id = UUID()
    let posterName: String
    let posterImage: String
    let userName: String
    let datePosted:String
    let message: String
    
    init(posterName: String, posterImage: String, userName: String, datePosted: String, message: String) {
        self.posterName = posterName
        self.posterImage = posterImage
        self.userName = userName
        self.datePosted = datePosted
        self.message = message
    }
        
}

let message1 = MessageModel(posterName: "Devanshu", posterImage: "devd", userName: "devdchaudhary", datePosted: "23/1/23", message: "Hello!")
