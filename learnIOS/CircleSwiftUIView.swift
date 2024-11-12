//
//  CircleSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 12/11/2024.
//

import SwiftUI

struct CircleSwiftUIView: View {
    var body: some View {

        /// Cricle ----
            Circle(
                
            )
    //        .fill(Color.red)
            //    .foregroundColor(.red)
            .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/ , to: 1.0)
           
            .stroke(style: StrokeStyle(
            lineWidth: 20,
            lineCap: .round,
            dash: [60.0]
            ) ).fill(.gray)
            
            .background{
                Text("Loading").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
                .frame(width: 300,height: 300).border(Color.gray)
            
    }
}

#Preview {
    CircleSwiftUIView()
}
