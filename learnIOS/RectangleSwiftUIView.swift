//
//  RectangleSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 12/11/2024.
//

import SwiftUI

struct RectangleSwiftUIView: View {
    var body: some View {
        VStack(spacing:20){
            
            Rectangle().frame(width: 200,height: 200).foregroundColor(.blue)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).frame(width: 200,height: 200)
            UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 30 )).frame(width: 200,height: 200)
          
        }
    }
}

#Preview {
    RectangleSwiftUIView()
}
