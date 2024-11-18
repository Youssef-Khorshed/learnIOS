//
//  CounterBodySwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 14/11/2024.
//

import SwiftUI

struct CounterBody: View {
    @Binding  var counter: Int
    var body: some View {
        HStack(spacing:50){
            
          
            Buttonstyle(label: "+") {
                counter+=1
            }
            Text(String(counter))
            
            Buttonstyle(label: "-") {
                counter > 0 ?   counter-=1 : nil

            }
        
            
            
        }
    }
}
struct Buttonstyle: View {
    let label : String
    let action : ()->Void
    var body: some View {
        Button(label, action:action).buttonStyle(.bordered).font(.largeTitle)
        
    }
}
