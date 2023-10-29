//
//  SignUpPage.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 26/10/2023.
//

import SwiftUI

struct SignUpPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmpass: String = ""
    @State private var fullName: String = ""
    @State private var isValidname = true
    @State private var isValidPassword = true
    
    func nameIsValid() -> Bool {
           return !fullName.isEmpty && !containsNumber(fullName)
       }

       // Function to check if the password is valid
       func passwordIsValid() -> Bool {
           return !password.isEmpty
       }

       // Function to check if a string contains a number
       func containsNumber(_ text: String) -> Bool {
           return text.rangeOfCharacter(from: .decimalDigits) != nil
       }
    var body: some View {
        
        
        VStack {
            Form {
                HStack{
                    Image(systemName:"person")
                    TextField("Full Name:", text: $email)
                    
                }
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 5).fill(Color.clear).stroke(Color.red,lineWidth:2) )
                HStack{
                    Image(systemName:"envelope")
                    TextField("Email Address", text: $fullName)
                    
                }
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 5).fill(Color.clear).stroke(Color.red,lineWidth:2))
                HStack{
                    Image(systemName:"lock")
                    TextField("Password", text: $password)
                        
                    
                }
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 5).fill(Color.clear).stroke(Color.red,lineWidth:2))
                
                HStack{
                    Image(systemName:"lock")
                    SecureField("Confirm Password", text: $password)
                }
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 5).fill(Color.clear).stroke(Color.red,lineWidth:2))
            }
            .scrollContentBackground(.hidden)
            .background(.clear)
            .frame(width: 300,height: 250)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
            .padding()
            
            Button(action: {
                print("Log In")
            }) {
                Text("Sign Up")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.white)
                    
            }
            .background(RoundedRectangle(cornerRadius: 25)
                .stroke(Color.red, lineWidth: 2))
            .background(Color.blue)
            .cornerRadius(25)
            .padding()
        }
        
        Spacer()
    }
}

#Preview {
    SignUpPage()
}
