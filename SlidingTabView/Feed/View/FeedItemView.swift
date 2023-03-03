//
//  FeedItemView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 01/03/23.
//

import SwiftUI

struct FeedItemView: View {
    
    let post: FeedModel
    
    var body: some View {
        
        HStack {
            
            VStack {
                
                Image(post.posterImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            VStack {
                
                HStack {
                    
                    Text(post.posterName)
                        .font(.system(size: 18).bold())
                        .foregroundColor(.black)
                    
                    Text("@\(post.userName)")
                        .font(.system(size: 12).bold())
                        .foregroundColor(Color(uiColor: .systemGray))
                    
                    Spacer()
                    
                }
                
                VStack {
                    
                    HStack {
                        
                        Text(post.tweetString)
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                    }
                    
                    if !post.tweetImage.isEmpty {
                        
                        Image(post.tweetImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        
                    }
                    
                    HStack {
                        
                        Group {
                                                        
                            Button(action: replyButtonClicked) {
                                Image(systemName: "message")
                                    .font(.system(size: 13).bold())
                                    .foregroundColor(Color(uiColor: .systemGray2))
                            }
                            .buttonStyle(.plain)
                            
                            Text(post.replyCount.description)
                                .font(.system(size: 13).bold())
                                .foregroundColor(Color(uiColor: .systemGray2))
                            
                            Spacer()
                            
                            Button(action: retweetButtonClicked) {
                                Image(systemName: "arrow.2.squarepath")
                                    .font(.system(size: 13).bold())
                                    .foregroundColor(Color(uiColor: .systemGray2))
                            }
                            .buttonStyle(.plain)
                            
                            Text(post.retweetCount.description)
                                .font(.system(size: 13).bold())
                                .foregroundColor(Color(uiColor: .systemGray2))
                            
                            Spacer()
                            
                        }
                            
                            Button(action: likeButtonClicked) {
                                Image(systemName: "heart")
                                    .font(.system(size: 13).bold())
                                    .foregroundColor(Color(uiColor: .systemGray2))
                            }
                            .buttonStyle(.plain)
                            
                            Text(post.likeCount.description)
                                .font(.system(size: 13).bold())
                                .foregroundColor(Color(uiColor: .systemGray2))
                            
                            Spacer()
                            
                            Button(action: viewButtinClicked) {
                                Image(systemName: "chart.bar.xaxis")
                                    .font(.system(size: 13).bold())
                                    .foregroundColor(Color(uiColor: .systemGray2))
                            }
                            .buttonStyle(.plain)
                            
                            Text("\(post.viewCount.description)K")
                                .font(.system(size: 13).bold())
                                .foregroundColor(Color(uiColor: .systemGray2))
                            
                            Spacer()
                                                    
                        Button(action: shareButtonClicked) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 13).bold())
                                .foregroundColor(Color(uiColor: .systemGray2))
                        }
                        .buttonStyle(.plain)
                        
                    }
                }
            }
        }
        .padding(.all, 15)
    }
    
    private func replyButtonClicked() {
        
    }
    
    private func retweetButtonClicked() {
        
    }
    
    private func likeButtonClicked() {
        
    }
    
    private func viewButtinClicked() {
        
    }
    
    private func shareButtonClicked() {
        
    }
    
}

//struct FeedItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedItemView(post: FeedModel(.init()))
//    }
//}
