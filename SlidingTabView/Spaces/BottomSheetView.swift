//
//  BottomSheeetView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 06/03/23.
//

import SwiftUI

struct RoundedCorners: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct BottomSheetView: View {
    
    @Environment(\.dismiss) var dismiss
    let spaceItem: SpacesModel
    
    var body: some View{
        VStack(alignment: .leading) {
            
            HStack {
                
                Button(action: dismissButtonClicked) {
                    Image(systemName: "xmark")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                
                Image(systemName: "ellipsis")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                
            }
            
            HStack {
                
                Text("LIVE")
                    .font(.system(size: 14))
                    .foregroundColor(Color(uiColor: .systemGray))

                Text("\(spaceItem.listeningCount.description) listening")
                    .font(.system(size: 14))
                    .foregroundColor(Color(uiColor: .systemGray))

                Spacer()
                
            }
            
            Text(spaceItem.spaceName)
                .font(.system(size: 14))
                .foregroundColor(.black)
            
            HStack {
                
                ForEach(spaceItem.usersImage, id: \.self) { image in
                    
                    Image(image)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 70, height: 70)
                        .clipped()
                    
                }
            }
            
            HStack {
                
                Text("25 other listeners")
                    .foregroundColor(.gray)
                    .font(.system(size: 15).bold())
                    .padding(.horizontal, 10)
                
                Spacer()
            }
            .padding(.vertical, 10)
            .overlay(
                Capsule(style: .continuous)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: UIScreen.main.bounds.width-20, height: 20)
                    .padding(.vertical, 10)
            )
            
            Button("Start listening", action: dismissButtonClicked)
                .frame(width: UIScreen.main.bounds.width-20, height: 40)
                .background(Color.indigo)
                .font(.system(size: 14).bold())
                .foregroundColor(.white)
                .cornerRadius(30)
                .padding(.vertical, 10)
            
        }
        .padding(.all, 10)
    }
    
    private func dismissButtonClicked() {
        dismiss()
    }
    
}

//struct BottomSheeetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheetView(spaceItem: SpacesModel(.init()))
//    }
//}
