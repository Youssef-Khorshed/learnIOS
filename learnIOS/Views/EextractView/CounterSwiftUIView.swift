//
//  CounterSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 14/11/2024.
//

import SwiftUI

struct CounterSwiftUIView: View {
    @State private var counter  = 0

    var body: some View {
        ZStack(alignment: .center)
           {
               BackgroundView()
               VStack {
                   Text("Counter").font(.largeTitle)
                   CounterBody(counter: $counter)
               }
               
           }
    }
}

#Preview {
    CounterSwiftUIView()
}




