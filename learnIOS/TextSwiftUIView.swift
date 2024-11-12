//
//  TextSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 12/11/2024.
//

import SwiftUI

struct TextSwiftUIView: View {
    var body: some View {
        /// TEXT -----
                Text("Hello, world!Hello, world!Hello, world!Hello, world!").baselineOffset(50)
        //        foregroundStyle(.red)
        //            .font(.system(size: 64,weight: .light,design: .rounded))
            //        .fontWeight(.bold)
        //            .bold()
        //            .underline(color:.red )
        //            .strikethrough(color:.green)
        //        font(.caption2)
        //            .frame(width: 400,height: 200,alignment: .topLeading).border(Color.green)
        //            .minimumScaleFactor(0.5)
        //            .lineLimit(4)
    }
}

#Preview {
    TextSwiftUIView()
}
