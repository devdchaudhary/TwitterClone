//
//  MessagesView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 01/03/23.
//

import SwiftUI

struct MessagesView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State private var searchQuery = ""
    
    let messages : [MessageModel] = [message1]
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image("devd")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 30, height: 30)
                    .padding(.leading)
                
                Spacer()
                
                Text("Messages")
                    .font(.system(size: 15).bold())
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
                Spacer()
                
                Image(systemName: "gear")
                    .font(.system(size: 18))
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
            }
            .padding(.horizontal)
            
            HStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: searchClicked) {
                        Image(systemName: "magnifyingglass").foregroundColor(.black)
                    }
                    
                    TextField("Search Direct Messages", text: $searchQuery)
                        .submitLabel(.search)
                        .onSubmit {
                            searchClicked()
                            hideKeyboard()
                        }
                        .onChange(of: searchQuery) { query in
                            
                            if query == "" {
                                hideKeyboard()
                            }
                        }
                }
                .padding(.horizontal)
                .padding(.vertical,10)
                .background(Color(uiColor: .systemGray5))
                .cornerRadius(30)
                
            }
            .listRowSeparator(.hidden)
            .padding(.horizontal, 10)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(uiColor: .systemGray3))
            
            List {
                
                ForEach(messages, id: \.id) { message in
                    
                    MessageItemView(item: message)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.white)
            
                }
            }
            .listStyle(.inset)
        }
    }
    
    private func searchClicked() {
        
    }
    
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
