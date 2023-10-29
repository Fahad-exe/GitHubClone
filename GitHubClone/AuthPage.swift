//
//  AuthPage.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 26/10/2023.
//

import SwiftUI

struct AuthPage: View {
    
    let Buttons: Array<AuthButtonInfo> = [AuthButtonInfo(image: "swift", text: "Continue With Google", textColor: .black, backgroundColor: .white, borderColor: .black), AuthButtonInfo(image: "swift", text: "Continue With Apple", textColor: .white, backgroundColor: .black, borderColor: .black),AuthButtonInfo(image: "swift", text: "Continue with Facebook", textColor: .white, backgroundColor: .blue, borderColor: .blue),AuthButtonInfo(image: "swift", text: "Sign in with Email", textColor: .white, backgroundColor: .pink, borderColor: .pink)]
    
    var body: some View {
        NavigationStack {
            VStack{
                VStack{
                    Text("GitHub Clone")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
                VStack{
       
                    
                    
                    
                    ForEach(Buttons) { button in
//                        MyAuthButton(data: button, dest: SignInPage())
                        
                        if Buttons.last?.id != button.id {
                            MyAuthButton(data: button, dest: Text(button.text))
                        }else{
                            MyAuthButton(data: button, dest: SignInPage())
                        }
                    }
                    
                    
                    
                    NavigationLink("Sign Up", destination: SignUpPage())
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .buttonStyle(.plain)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.center)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            }
        }
    }
}



struct AuthButtonInfo: Identifiable{
    var id = UUID()
    let image:String
    var text:String
    var textColor: Color
    var backgroundColor:Color
    var borderColor:Color
   
}

#Preview {
    AuthPage()
}

struct MyAuthButton<destination:View>: View {
    var data: AuthButtonInfo
    var dest:destination
    var body: some View {
        
        NavigationLink {
        dest
        } label: {
            ZStack {
                HStack {
                    Image(systemName: data.image)
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 25,height: 25)
                    Spacer()
                }
                
                
                Text(data.text)
                    .font(.title2)
                    .foregroundStyle(data.textColor)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).fill(data.backgroundColor))
        
        .background(RoundedRectangle(cornerRadius: 8).stroke( data.borderColor, lineWidth: 4))
        .padding(.horizontal)
        
        
    }
    
}
