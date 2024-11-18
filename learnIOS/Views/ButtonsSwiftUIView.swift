//
//  ButtonsSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 14/11/2024.
//

import SwiftUI

struct ButtonsSwiftUIView: View {
    var body: some View {
        VStack(spacing: 20){
            /// Basic  -  Button
            Button("Button 1") {
                print("hello button")
            }
              .buttonStyle(.automatic) // reflects refering to the environment mac - iphone - ipad
            
            Button("Button 2") {
                print("hello button")
            }
               .buttonStyle(.plain) // there is no animation when click it and changes in theme (dark - light)
            Button("Button 3") {
                print("hello button")
            }
            .bold()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .tint(.brown)
               // .controlSize(.) // to control button size
                .buttonBorderShape(.roundedRectangle(radius: 2))// ready items (circle - rectangle - ellipse)
            .buttonStyle(.borderedProminent) // add sharp background refers to accent color by default
            Button("Button 4") {
                print("hello button")
            }
            .buttonStyle(.bordered)
            .tint(.brown) // used to change background button color
            .foregroundColor(.yellow) // add fade background color
            
            Button("Button 5") {
                print("hello button")
            }
            .buttonStyle(.borderless) // buttton without border but that not affected by environment like automatic
            .disabled(true) // used to control button click
            
            /// Custom  -  Button
            Button {
                print("hello button")

            }label: {
                Text("Button Custom").padding().background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
            }
            .buttonStyle(CustomButtonStyle())
            
        }
     
    }
}
struct CustomButtonStyle : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.font(.title)
    }
}
#Preview {
    ButtonsSwiftUIView()
}
