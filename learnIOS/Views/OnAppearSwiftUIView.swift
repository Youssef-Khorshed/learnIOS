//
//  OnAppearSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 18/11/2024.
//

import SwiftUI

struct OnAppearSwiftUIView: View {
    @State private var text : String = "Hi User"
    @State private var isanimatred : Bool = false
    var body: some View {
        VStack(spacing:20){
            
            Text(text).onAppear{
                
                /// Timer  DispatchQueue
                DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                    text =  "Hello, World!"
                    
                }
                
            }
            /// Basic aniamtion - offset boolean  - image
            ZStack{
                Image(.doctorimage).resizable().scaledToFit().frame(width: 200,height: 200)
                LinearGradient(colors: [.white,.white.opacity(0.0)], startPoint: .bottom, endPoint: .center)
            }.frame(height:  200).offset(x: 0,y: isanimatred ? -10 : 10).animation(.easeInOut(duration: 1.5).repeatForever(), value: isanimatred).onAppear{
                isanimatred = !isanimatred
            }
            
        }
    }
}

#Preview {
    OnAppearSwiftUIView()
}
