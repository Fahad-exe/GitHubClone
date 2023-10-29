//
//  SignInPage.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 26/10/2023.
//

import SwiftUI

struct SignInPage: View {
    @State private var email: String = ""
    @State private var password :String = ""
    var body: some View {
        
        VStack {
            Form {
                HStack{
                    Image(systemName:"envelope")
                    TextField("Email Address", text: $email)
                    
                }
                HStack{
                    Image(systemName:"lock")
                    SecureField("Password", text: $password)
                }
            }
            .scrollContentBackground(.hidden)
            .background(.clear)
            .frame(width: 250,height: 150)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
            .padding()
            Button(action: {
                print("Log In")
            }) {
                Text("Log In")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            .background(Color.blue)
            .cornerRadius(25)
            .padding()
        }
        Spacer()
    }
}

#Preview {
    SignInPage()
}
