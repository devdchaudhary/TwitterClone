//
//  Model.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import Foundation

struct SpacesModel {
    
    let id = UUID()
    let spaceName: String
    let listeningCount: Int
    let hostName: String
    let usersImage: [String]
    let latestComment: String
    
    init(spaceName: String, listeningCount: Int, hostName: String, usersImage: [String], latestComment: String) {
        self.spaceName = spaceName
        self.listeningCount = listeningCount
        self.hostName = hostName
        self.usersImage = usersImage
        self.latestComment = latestComment
    }
    
}

let space1Text = """

Barca 1 - 0 Real Madrid
#ElClassico# #BarcaSpaces

"""

let space1comment = """

The space for all FC Barcelona reladed news,
debates, GIF's, media, twitter spaces and more!

"""

let space1 = SpacesModel(spaceName: space1Text, listeningCount: 202, hostName: "Barca Spaces", usersImage: ["arthur", "micah", "dutch"], latestComment: space1comment)
let space2 = SpacesModel(spaceName: "New Technologies", listeningCount: 202, hostName: "Devanshu", usersImage: ["arthur", "micah", "dutch"], latestComment: "\nThe space for all the latest tech news going on in the world rn!\n")
let space3 = SpacesModel(spaceName: "Geopolitics", listeningCount: 202, hostName: "Micah Bell", usersImage: ["arthur", "micah", "dutch"], latestComment: "\nThe space for all the latest geopolitical news going on in the world rn!\n")
let space4 = SpacesModel(spaceName: "", listeningCount: 202, hostName: "Arthur", usersImage: ["arthur", "micah", "dutch"], latestComment: "\nThe space for all the latest medical advancements going on in the world right now!\n")
let space5 = SpacesModel(spaceName: "New Plans", listeningCount: 202, hostName: "Dutch", usersImage: ["arthur", "micah", "dutch"], latestComment: "\nThe space for all the latest planning news going on in the world rn!\n")
