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

            /// Using Custom Colors with Rectangle
            Rectangle().frame(width: 200,height: 200).foregroundColor(Color(.rectangleColors))
            
            /// Linear Gradinat works only Fill properity not  foreground
            RoundedRectangle(cornerRadius: 30.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).fill(LinearGradient(colors: [Color.red,Color.green], startPoint: .bottom, endPoint: .top)).frame(width: 200,height: 200)
            
            /// Custom Radius in Rectangle
            UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 30 )).frame(width: 200,height: 200)
          
        }
    }
}

#Preview {
    RectangleSwiftUIView()
}
