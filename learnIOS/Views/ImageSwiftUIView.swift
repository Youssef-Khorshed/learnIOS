//
//  ImageSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 13/11/2024.
//

import SwiftUI

struct ImageSwiftUIView: View {
    let url = URL(string:  "https://picsum.photos/400")
    var body: some View {
        
        VStack(spacing:20) {
            
            /// Default icon-------
            Image(systemName: "person")
                .resizable()
            //  .scaledToFill()
                .scaledToFit()
                .foregroundColor(.red)
                .frame(width: 200,height: 200).border(.white)
            //    .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            /// Asset image with fade -------
            ZStack {
                Image(.doctorimage)
                    .resizable()
                    .scaledToFit()
                .frame(width: 200,height: 200)
                LinearGradient(colors: [.white,.white.opacity(0.0)], startPoint: .bottom, endPoint: .center)
            }.frame(height: 200)
            
            /// Asset Icon
            Image(.filter).resizable().scaledToFit().frame(width: 49,height: 49)
            
            /// URL image
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                   ProgressView()
                case .success(let image):
                    image.resizable().scaledToFill().clipped()
                case .failure(_):
                    Image(systemName: "person.crop.circle.badge.exclamationmark.fill").resizable().scaledToFit()
                @unknown default:
                    Image(systemName: "person.crop.circle.badge.exclamationmark.fill").resizable().scaledToFit()
                }
            }.frame(width:200,height: 200).clipShape(Circle())
            
        }
        
        
    }
}

#Preview {
    ImageSwiftUIView()
}
