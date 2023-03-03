//
//  MasterSpacesview.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 01/03/23.
//

import SwiftUI

struct SpacesView: View {
    
    @State private var searchQuery = ""
    @State var spacesItemList: [SpacesModel] = [space1, space2, space3, space4, space5]
    
    var body: some View {
        
        List {
            
            HStack {
                
                Image("devd")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 30, height: 30)
                    .padding(.leading)
                
                Spacer()
                
                Text("Spaces")
                    .font(.system(size: 18).bold())
                    .foregroundColor(.black)
                
                Spacer()
                
            }
            .listRowSeparator(.hidden)
            
            HStack {
                                
                HStack {
                                        
                    Button(action: searchClicked) {
                        Image(systemName: "magnifyingglass").foregroundColor(.black)
                    }
                                        
                    TextField("Search for a Space", text: $searchQuery)
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
            
            VStack(alignment: .leading) {
                
                Text("Happening Now")
                    .font(.system(size: 18).bold())
                    .foregroundColor(.black)
                
                Text("Spaces going on right now")
                    .font(.system(size: 18).bold())
                    .foregroundColor(Color(uiColor: .systemGray))
                
            }
            .padding(.vertical, 5)
            
            
            ForEach(spacesItemList, id: \.id) { item in
                
                SpacesItemView(spaceItem: item)
                    .listRowBackground(Color.white)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(.inset)
    }
    
    private func searchClicked() {
        
    }
    
}

struct MasterSpacesView_Previews: PreviewProvider {
    static var previews: some View {
        SpacesView()
    }
}
