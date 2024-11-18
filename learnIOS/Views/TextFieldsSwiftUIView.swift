//
//  TextFieldsSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 18/11/2024.
//

import SwiftUI


struct TextFieldsSwiftUIView: View {
    /// for next focus on textfiled
    enum NextItem{
        case username
        case phone
        case password
        
    }
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var password: String = ""
    @State private var isvalid: Bool = true
    @FocusState private var loginstate : NextItem?
   
    
    var body: some View {
        
     
        VStack(alignment:.leading,spacing: 10){
            /// General text filed
            Text("Name")
            TextField("Name", text: $name).textFieldStyle(.roundedBorder).focused($loginstate, equals: .username)
                .onAppear {
                    loginstate = .username
                }
            /// keypboard - autocapitalization
            Text("Phone")
            TextField("Phone", text: $phone).textFieldStyle(.automatic)// depending on plate form (plain)
                .autocapitalization(.allCharacters)
                .keyboardType(.phonePad)
                .focused($loginstate, equals: .phone)
                .onSubmit {
                    loginstate = .phone
                }
            
            /// Custom TextStyle - secure Field
            Text("Password")
            SecureField("Password", text: $password)
//                .padding(.vertical,5).padding(.horizontal,10)
//                .background(.gray.opacity(0.9))
//                .frame(width: 350).clipShape(RoundedRectangle(cornerRadius: 25.0))
//                .disableAutocorrection(true)
                .textFieldStyle(CustomFieldStyle())
                .onSubmit {
                    loginstate = .password
                }
                .onChange(of: password) { oldValue, newValue in
                    /// Add regex condition for check
                    isvalid = newValue.contains("@")&&newValue.contains(".")
                }// Prevents autocorrection from being applied
            if !isvalid {
                        Text("Password must contianss special char [@ - .].")
                            .foregroundColor(.red)
                    }
            
            
        
            
            
            Button("Submmit") {
                
            }
        }.padding(.horizontal,30)
        
        
        
    }
}

struct CustomFieldStyle : TextFieldStyle{
    func _body(configuration: TextField<Self._Label>)-> some View{
        configuration.padding(.vertical,5).padding(.horizontal,10)
            .background(.gray.opacity(0.9))
            .frame(width: 350).clipShape(RoundedRectangle(cornerRadius: 25.0))
            .disableAutocorrection(true)
        
    }
}



#Preview {
    TextFieldsSwiftUIView()
}
