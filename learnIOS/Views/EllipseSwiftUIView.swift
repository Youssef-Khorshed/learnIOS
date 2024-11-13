//
//  EllipseSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 12/11/2024.
//

import SwiftUI

struct EllipseSwiftUIView: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .overlay(Text("Circle").foregroundColor(.white))
            
            Ellipse()
                .frame(width: 150, height: 100)
                .foregroundColor(.green)
                .overlay(Text("Ellipse").foregroundColor(.white))
        }
    }
}

#Preview {
    EllipseSwiftUIView()
}
