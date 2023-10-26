//
//  ProfileViewPage.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 25/10/2023.
//

import SwiftUI

struct ProfileViewPage: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Circle()
                        .frame(width: 50,height: 50)
                    VStack{
                        Text("FName LName")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("UserName")
                            .font(.title2)
                    }
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                .padding()
                Text("Bio")
                    .font(.title3)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding()
                
                let row1 : Array<ProfileInfo> = [ProfileInfo(text: "Work", image: "building.2"), ProfileInfo(text: "Riyadh,Kingdom of Saudi Arabia", image: "mappin")]
                
                let row2 : Array<ProfileInfo> = [ProfileInfo(text: "example.com", image: "link"), ProfileInfo(text: "IOS Developer", image: "viewfinder")]
                
                let row3 : Array<ProfileInfo> = [ProfileInfo(text: "10 followers", image: "person", subtext:"• 3 following")]
                HStack {
                    ForEach(row1) { info in
                        myProfileInfo(data: info)
                    }
                }
                HStack {
                    ForEach(row2) { info in
                        myProfileInfo(data: info)
                    }
                }
                HStack{
                    ForEach(row3) { info in
                        myProfileInfo(data: info)
                    }
                }
                
                HStack{
                    Image(systemName: "trophy")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 24,height: 24)
                        .foregroundStyle(.black)
                        .padding()
                    
                    ZStack{
                        Image("GitHub-Pull")
                            .resizable().aspectRatio(contentMode: .fit)
                            .frame(width: 8 * 4,height: 8 * 4)
                            .offset (x:-12)
                        Image("GitHub-QuickDraw")
                            .resizable().aspectRatio(contentMode: .fit)
                            .frame(width: 8 * 4,height: 8 * 4)
                            .offset(x:12)
                    }
                    .frame(width: 64)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                
                RowList()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        VStack {
                            HStack {
                                Image(systemName: "person")
                                    .padding()
                                VStack {
                                    Text("Fname Lname")
                                        .fontWeight(.heavy)
                                   
                                    Text("UserName")
                                        .font(.title2)
                                }
                            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            
                            VStack {
                                Text("Project Name")
                                    .fontWeight(.heavy)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.leading)
                                Text("""
                                     Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.
                                     """)
                                .frame(width: 400,height: 50)
                                
                            }
            
                            
                                    
                            
                            
                        }.background(RoundedRectangle(cornerRadius: 8).fill(.gray).opacity(0.7))
                            
                        
                        VStack {
                            HStack {
                                Image(systemName: "person")
                                    .padding()
                                VStack {
                                    Text("Fname2 Lname2")
                                        .fontWeight(.heavy)
                                   
                                    Text("UserName2")
                                        .font(.title2)
                                }
                            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            
                            VStack {
                                Text("Project Name2")
                                    .fontWeight(.heavy)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.leading)
                                Text("""
                                     Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.
                                     """)
                                .frame(width: 400,height: 50)
                                
                            }
            
                            
                                    
                            
                            
                        }.background(RoundedRectangle(cornerRadius: 8).fill(.gray).opacity(0.7))
                        
                        VStack {
                            HStack {
                                Image(systemName: "person")
                                    .padding()
                                VStack {
                                    Text("Fname3 Lname3")
                                        .fontWeight(.heavy)
                                   
                                    Text("UserName3")
                                        .font(.title2)
                                }
                            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            
                            VStack {
                                Text("Project Name3")
                                    .fontWeight(.heavy)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.leading)
                                Text("""
                                     Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.
                                     """)
                                .frame(width: 400,height: 50)
                                
                            }
            
                            
                                    
                            
                            
                        }.background(RoundedRectangle(cornerRadius: 8).fill(.gray).opacity(0.7))
                    }.padding()
                    
            
                        
                    
                }
                
                
                
                VStack {
                    Text("Some gibirsh to write as well as filling the box with words so it doesnt feel empty")
                        .fontWeight(.heavy)
                        .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .padding()
                }
                    
                                    
            }
            
        }
        
    }
}

struct ProfileView : PreviewProvider {
    static var previews: some View{
        ProfileViewPage()
    }
}
struct myProfileInfo: View {
    let data: ProfileInfo
    var body: some View {
        
        HStack {
            Image(systemName: data.image)
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 24,height: 24)
                .foregroundStyle(.black)
                .padding(.leading)
                
            Text(data.text)
                .font(.subheadline)
                
            
            Text(data.subtext)
                .font(.subheadline)
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
    
        
        
        
        
        
    }
}


struct ProfileInfo :Identifiable{
    var id = UUID()
    let text:String
    let image: String
    var subtext = ""
}

struct RowList: View {
    var body: some View {
        VStack(spacing:0){
            HStack {
                Image(systemName: "book.closed")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 16,height: 16)
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 4).fill(.gray).frame(width: 24,height: 24))
                
                
                
                
                
                Text("Repositories")
                    .fontWeight(.medium)
                
                Text("6")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.trailing)
                
                Image(systemName: "chevron.right")
                    .frame(maxWidth: 15, alignment: .trailing)
                
                
            }
            .padding()
            .background(Color.gray.opacity(0.3))
            
            Divider()
            
            HStack {
                Image(systemName: "star")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 16,height: 16)
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 4).fill(.yellow).frame(width: 24,height: 24))
                
                
                
                
                
                Text("Starred")
                    .fontWeight(.medium)
                
                Text("10")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.trailing)
                
                Image(systemName: "chevron.right")
                    .frame(maxWidth: 15, alignment: .trailing)
                
                
            }
            .padding()
            .background(Color.gray.opacity(0.3))
            
            Divider()
            
            
            HStack {
                Image(systemName: "building.2")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 16,height: 16)
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 4).fill(.orange).frame(width: 24,height: 24))
                
                
                
                
                
                Text("Organizations")
                    .fontWeight(.medium)
                
                Text("20")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.trailing)
                
                Image(systemName: "chevron.right")
                    .frame(maxWidth: 15, alignment: .trailing)
                
                
            }
            .padding()
            .background(Color.gray.opacity(0.3))
            
            
        }
    }
}
