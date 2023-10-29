//
//  SplashPage.swift
//  GitHubClone
//
//  Created by Fahad Matlagitu on 26/10/2023.
//

import SwiftUI

struct SplashView: View {
    @State var isActive = false
    var body: some View {
        
        ZStack {
            if self.isActive{
                //Name of file
                RootView()
                AuthPage()
            }else{
                Color.gray.ignoresSafeArea()
                VStack {
                    Image("GitHub")
                        .resizable().scaledToFit().frame(width: 300,height: 300)
                    Text("GitHub Clone")
                        .font(.largeTitle).foregroundStyle(.white)
                        .bold()
                    
                }
                .padding()
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
    }
}

#Preview {
    SplashView()
}
