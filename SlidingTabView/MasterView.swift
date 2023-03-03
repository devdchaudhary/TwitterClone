//
//  MasterView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 01/03/23.
//

import SwiftUI

struct MasterView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var selectedTab = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            TabView(selection: $selectedTab) {
                
                MasterFeedView()
                    .tag(0)
                
                MasterSearchView()
                    .tag(1)
                
                SpacesView()
                    .tag(2)
                
                MasterNotificationsView()
                    .tag(3)
                
                MessagesView()
                    .tag(4)
                
            }
            
            HStack {
                
                Group {
                    
                    Spacer().frame(width: 30)
                    
                    Button(action: {
                        withAnimation {
                            selectedTab = 0
                        }
                    }) {
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .font(selectedTab == 0 ? .system(size: 20).bold() : .system(size: 20))
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            selectedTab = 1
                        }
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(selectedTab == 1 ? .system(size: 20).bold() : .system(size: 20))
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            selectedTab = 2
                        }
                    }) {
                        Image(systemName: selectedTab == 2 ? "mic.fill" : "mic")
                            .font(selectedTab == 2 ? .system(size: 20).bold() : .system(size: 20))
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                }
                
                Button(action: {
                    withAnimation {
                        selectedTab = 3
                    }
                }) {
                    
                    Image(systemName: selectedTab == 3 ? "bell.fill" : "bell")
                        .font(selectedTab == 3 ? .system(size: 20).bold() : .system(size: 20))
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        selectedTab = 4
                    }
                }) {
                    Image(systemName: selectedTab == 4 ? "envelope.fill": "envelope")
                        .font(selectedTab == 4 ? .system(size: 20).bold() : .system(size: 20))
                        .foregroundColor(.black)
                }
                
                Spacer().frame(width: 30)
                
            }
            
            VStack {
                HStack{
                    Spacer()
                    Button(action: addPostClicked) {
                        withAnimation {
                            Image(systemName: selectedTab == 2 ? "iphone.homebutton.radiowaves.left.and.right" : "plus")
                                .font(.system(size: 25))
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                                .background(selectedTab == 2 ? .indigo : Color.accentblue)
                                .clipShape(Circle())
                        }
                    }
                    .padding()
                    .shadow(radius: 5)
                }
                Spacer().frame(height: 50)
            }
        }
    }
    
    private func addPostClicked() {
        
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
