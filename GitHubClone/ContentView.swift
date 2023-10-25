//
//  ContentView.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 24/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            HStack{
                Text("My Work")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                Image(systemName: "ellipsis")
            }
            .padding()
            
            VStack {
                
                
                let Rows = [myRows(text: "issues", image: "smallcircle.filled.circle", backgroundColors: Color.green),
                            myRows(text: "Pull Request", image: "arrow.triangle.pull", backgroundColors: .blue)
                            ,myRows(text: "Discussions", image: "bubble.left.and.bubble.right", backgroundColors: .purple)
                            ,myRows(text: "Projects", image: "archivebox", backgroundColors: .gray)
                            ,myRows(text: "Repositories", image: "book.closed", backgroundColors: .black)
                            ,myRows(text: "Organizations", image: "building.2", backgroundColors: .orange)
                            ,myRows(text: "Stared", image: "star", backgroundColors: .yellow)]
                
                ForEach(Rows) { row in
                    myWorkRows(data: row)
                    
                }
                
                
                
                
                Spacer()
                
            }
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.white))
            .padding(.horizontal)
            
            HStack{
                Text("Favourites")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                Image(systemName: "ellipsis")
            }
            .padding()
            VStack {
                Text("Add favorite repositories here to have quick access at any time, without having to search")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Button(action: {print("Favourite pressed")}, label: {
                    Text("Add favorites")
                })
                .frame(width:8 * 28,height: 8 * 6)
                .background(Color.gray)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding()
            }.background(RoundedRectangle(cornerRadius: 8).fill(.gray).opacity(0.7))
                .padding()
            
            HStack{
                Text("Shortcuts")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                Image(systemName: "ellipsis")
            }
            .padding()
            VStack {
                Text("The things you need, one tap away")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Fast access to your list of issues, pull request, or Discussions")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                   
                Button(action: {print("Favourite pressed")}, label: {
                    Text("Get Started")
                })
                .frame(width:8 * 28,height: 8 * 6)
                .background(Color.gray)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding()
            }.background(RoundedRectangle(cornerRadius: 8).fill(.gray).opacity(0.7))
                .padding()
        }
        .background(Color.gray.opacity(0.2))
    }
}

#Preview {
    ContentView()
}

struct myWorkRows: View {
    let data: myRows
    var body: some View {
        
        HStack {
            Image(systemName: data.image)
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 16,height: 16)
                .foregroundStyle(.white)
                .background(RoundedRectangle(cornerRadius: 4).fill(data.backgroundColors).frame(width: 24,height: 24))
                
                
                
                
            
            Text(data.text)
                .fontWeight(.medium)
            
            
            Image(systemName: "chevron.right")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            
        }
        .padding()
        Divider()
        
        
    }
}

struct myRows:Identifiable {
    let id = UUID()
    var text : String
    var image : String
    let foregroundColors: Color = .white
    var backgroundColors: Color
}
