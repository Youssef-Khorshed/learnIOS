//
//  ContentView.swift
//  learnIOS
//
//  Created by youssef on 12/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State  var email : Double=0
    var body: some View {
        VStack(spacing:20){
            TextField("Email", value: $email, format: .number).background(.gray.opacity(0.5)).padding(.horizontal,20)
        }
        
    }
}

#Preview {
    ContentView()
}
