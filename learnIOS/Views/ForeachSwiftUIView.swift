//
//  ForeachSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 18/11/2024.
//

import SwiftUI


struct ForeachSwiftUIView: View {

    struct User : Identifiable {
        let name : String
        let id = UUID()  /// id is must for identifierable
        
    }
    @State  private var  users :[User] =  [User(name: "first"),User(name: "second"),User(name: "Third") ]
    var body: some View {
        VStack{
            //            /// baisc
            //            ForEach(0..<10){ index in
            //                Text("\(index)")
            //            }
            /// caputure keyword
            //            ForEach (0..<10){
            //                Text("\($0)")
            //            }
            /// Fetch data using index ....?
            //            ForEach(users.indices){
            //                index in
            //                Text(users[index].name)
            //            }
            /// fetch data ---?
//            ForEach(users){ user in
//                Text(user.name).bold()
//            }
//            
            ForEach(users){
                Text("user   \($0.name)").italic()
            }
        
            
        }
    }
}

#Preview {
    ForeachSwiftUIView()
}
