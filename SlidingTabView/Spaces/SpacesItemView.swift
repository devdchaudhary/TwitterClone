//
//  SpacesItemView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import SwiftUI

struct SpacesItemView: View {
    
    let spaceItem: SpacesModel
    let colors: [Color] = [.red, .blue, .purple]
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image(systemName: "waveform.path")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                
                Text("LIVE")
                    .foregroundColor(.white)
                
                Spacer()
                
                Menu {
                    Button(action: showMenu) {
                        Text("Not interested")
                            .foregroundColor(.white)
                    }
                }
            label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
                    .frame(width: 10, height: 30)
            }
            }
            .padding(.top, 10)
            .padding(.horizontal)
            
            HStack {
                
                VStack(alignment: .leading) {
                    
                    Text(spaceItem.spaceName)
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    
                    HStack {
                        
                        ZStack(alignment: .leading) {
                            ForEach(Array(spaceItem.usersImage.enumerated()), id: \.offset) { index, image in
                                switch index{
                                case 0:
                                    Image(image)
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 30, height: 30)
                                        .clipped()
                                case 1:
                                    Image(image)
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 30, height: 30)
                                        .clipped()
                                        .offset(x: 15, y: 0)
                                case 2:
                                    Image(image)
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 30, height: 30)
                                        .clipped()
                                        .offset(x: 25, y: 0)
                                default:
                                    Image(image)
                                        .resizable()
                                        .clipShape(Circle())
                                        .frame(width: 30, height: 30)
                                        .clipped()
                                        .offset(x: 30, y: 0)
                                }
                            }
                        }
                        
                        Text(spaceItem.listeningCount.description + " listening")
                            .foregroundColor(.white)
                            .padding(.leading, 25)
                        
                        Spacer()
                        
                    }
                }
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(uiColor: .systemGray))
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    Text(spaceItem.hostName)
                        .foregroundColor(.white)
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                    
                    Text("Host")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .background(
                            Rectangle()
                                .frame(width: 30)
                                .foregroundColor(.white.opacity(0.5))
                                .cornerRadius(2)
                        )
                    
                    Spacer()
                    
                }
                .padding(.horizontal)
                
                Text(spaceItem.latestComment)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
            }
            .foregroundColor(.indigo)
            
        }
        .background(
            RoundedRectangle(cornerRadius: 10.0)
                .foregroundColor(.indigo)
                .shadow(radius: 1)
        )
        .padding()
    }
    
    private func showMenu() {
        
    }
    
}

//struct SpacesItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        SpacesItemView()
//    }
//}
