//
//  ExplorePage.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 24/10/2023.
//

import SwiftUI

struct ExplorePage: View {
    var body: some View {
        VStack{
          Text("Discover")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding()
            
            HStack {
                Image(systemName: "flame")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 16,height: 16)
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 4).fill(Color.purple).frame(width: 24,height: 24))
                    
                    
                    
                    
                
                Text("Trending repo")
                    .fontWeight(.medium)
                
                
                Image(systemName: "chevron.right")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                
            }
            .padding()
            
            Divider()
            HStack {
                Image(systemName: "smiley")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 16,height: 16)
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 4).fill(Color.red).frame(width: 24,height: 24))
                    
                    
                    
                    
                
                Text("Aweseom List")
                    .fontWeight(.medium)
                
                
                Image(systemName: "chevron.right")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                
            }
            .padding()
            
            Text("Activity")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding()
            VStack{
                Text("Add favorite repositories here to have quick access at any time, without having to search")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Button(action: {print("Favourite pressed")}, label: {
                    Image(systemName: "star")
                    Text("Star")
                })
                .frame(width:8 * 28,height: 8 * 6)
                .background(Color.gray)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding()
            }
            .background(RoundedRectangle(cornerRadius: 8).fill(.gray).opacity(0.7))
                .padding()
        
        }
        Spacer()
    }
}

#Preview {
    ExplorePage()
}
