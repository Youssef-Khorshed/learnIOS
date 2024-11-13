//
//  BackgroundOverlaySwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 13/11/2024.
//

import SwiftUI

struct BackgroundOverlaySwiftUIView: View {
    var body: some View {
        VStack {
            Text("Hello, World!").padding(EdgeInsets(top: 20, leading: 20, bottom: 10, trailing: 10)).background(.red)
       
            Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 200).overlay {
                Text("Gi").foregroundStyle(.blue)
            }
        }
        
    }
}

#Preview {
    BackgroundOverlaySwiftUIView()
}
