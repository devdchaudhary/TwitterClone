//
//  TrendingModel.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import Foundation

struct TrendingModel {
    
    let id = UUID()
    let itemNo: Int
    let itemName: String
    let itemTweetCount: Int
    
    init(itemNo: Int, itemName: String, itemTweetCount: Int) {
        self.itemNo = itemNo
        self.itemName = itemName
        self.itemTweetCount = itemTweetCount
    }
    
}

let trendingItem1 = TrendingModel(itemNo: 1, itemName: "Aliens Invading", itemTweetCount: 16)
let trendingItem2 = TrendingModel(itemNo: 2, itemName: "Flood", itemTweetCount: 32)
let trendingItem3 = TrendingModel(itemNo: 3, itemName: "Volcano", itemTweetCount: 235)
let trendingItem4 = TrendingModel(itemNo: 4, itemName: "Supernova", itemTweetCount: 2356)
let trendingItem5 = TrendingModel(itemNo: 5, itemName: "Construction", itemTweetCount: 21)
let trendingItem6 = TrendingModel(itemNo: 6, itemName: "Soccer", itemTweetCount: 210)
let trendingItem7 = TrendingModel(itemNo: 7, itemName: "Oil", itemTweetCount: 02)
let trendingItem8 = TrendingModel(itemNo: 8, itemName: "EV", itemTweetCount: 01)
let trendingItem9 = TrendingModel(itemNo: 9, itemName: "London", itemTweetCount: 078)
let trendingItem10 = TrendingModel(itemNo: 10, itemName: "Space", itemTweetCount: 07)
let trendingItem11 = TrendingModel(itemNo: 11, itemName: "Gaming", itemTweetCount: 65)

let news1 = TrendingModel(itemNo: 1, itemName: "Aliens Invading the Earth", itemTweetCount: 16)
let news2 = TrendingModel(itemNo: 2, itemName: "Flood in Pacific Ocean", itemTweetCount: 32)
let news3 = TrendingModel(itemNo: 3, itemName: "Volcano erupts in sky", itemTweetCount: 235)
let news4 = TrendingModel(itemNo: 4, itemName: "Supernova in neighbouring universe", itemTweetCount: 2356)
let news5 = TrendingModel(itemNo: 5, itemName: "Construction is good", itemTweetCount: 21)
let news6 = TrendingModel(itemNo: 6, itemName: "Soccer is Football", itemTweetCount: 210)
let news7 = TrendingModel(itemNo: 7, itemName: "Oil is flammable", itemTweetCount: 02)
let news8 = TrendingModel(itemNo: 8, itemName: "EV's are expensive", itemTweetCount: 01)
let news9 = TrendingModel(itemNo: 9, itemName: "London has fallen", itemTweetCount: 078)
let news10 = TrendingModel(itemNo: 10, itemName: "Space is dark", itemTweetCount: 07)
let news11 = TrendingModel(itemNo: 11, itemName: "Gaming is dying", itemTweetCount: 65)

let sports1 = TrendingModel(itemNo: 1, itemName: "Argentina wins FIFA World", itemTweetCount: 16)
let sports2 = TrendingModel(itemNo: 2, itemName: "IPL Delayed", itemTweetCount: 32)
let sports3 = TrendingModel(itemNo: 3, itemName: "India wins world cup", itemTweetCount: 235)
let sports4 = TrendingModel(itemNo: 4, itemName: "Soccer is Football", itemTweetCount: 2356)
let sports5 = TrendingModel(itemNo: 5, itemName: "Volleyball", itemTweetCount: 21)
let sports6 = TrendingModel(itemNo: 6, itemName: "Soccer is Football", itemTweetCount: 210)

let ent1 = TrendingModel(itemNo: 1, itemName: "AntMan Quantumania released", itemTweetCount: 123)
let ent2 = TrendingModel(itemNo: 2, itemName: "New movies to look forward to", itemTweetCount: 32)
let ent3 = TrendingModel(itemNo: 3, itemName: "Indian Jones", itemTweetCount: 235)
let ent4 = TrendingModel(itemNo: 4, itemName: "Movies in 2023", itemTweetCount: 236)
