//
//  StacksSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 13/11/2024.
//

import SwiftUI

struct StacksSwiftUIView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.red,Color.red.opacity(0)], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            // VStack inside ZStack
                      VStack {
                          Text("Vertical Stack")
                              .font(.title)
                              .foregroundColor(.white)
                          Divider()
                          Text("Another item in VStack")
                              .foregroundColor(.white)
                      }
                      .padding()

                      // HStack inside ZStack
                      HStack {
                          Text("Horizontal Stack")
                              .font(.title2)
                              .foregroundColor(.white)
                          Spacer()
                          Text("Another item in HStack")
                              .foregroundColor(.white)
                      }
                      .padding()
                  
            
            
        }
    }
}

#Preview {
    StacksSwiftUIView()
}
