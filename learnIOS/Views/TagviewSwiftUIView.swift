//
//  TagvirwSwiftUIView.swift
//  learnIOS
//
//  Created by youssef on 18/11/2024.
//

import SwiftUI

struct TagvirwSwiftUIView: View {
    @State private var tagInput: String = ""           // Input field for tag
    @State private var tags: [String] = []             // List to store tags
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Tags")) {
                    // TextField to input tags
                    HStack {
                        TextField("Enter a tag", text: $tagInput)
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.gray, lineWidth: 1))
                            .autocapitalization(.none)
                        
                        Button(action: addTag) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(tagInput.isEmpty ? .gray : .blue)
                        }
                        .disabled(tagInput.isEmpty)
                    }
                    
                    // Display the list of tags
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(tags, id: \.self) { tag in
                                Text(tag)
                                    .padding(8)
                                    .background(Color.blue.opacity(0.2))
                                    .foregroundColor(.blue)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .onTapGesture {
                                        removeTag(tag)
                                    }
                            }
                        }
                    }
                }
                
                Section {
                    Button("Submit") {
                        // Handle form submission, e.g., send tags to a server
                        print("Tags: \(tags)")
                    }
                    .disabled(tags.isEmpty)
                }
            }
            .navigationTitle("Tag Field Example")
        }
    }
    
    // Function to add a new tag
    private func addTag() {
        if !tagInput.isEmpty && !tags.contains(tagInput) {
            tags.append(tagInput)
            tagInput = "" // Clear the input field after adding tag
        }
    }
    
    // Function to remove a tag
    private func removeTag(_ tag: String) {
        if let index = tags.firstIndex(of: tag) {
            tags.remove(at: index)
        }
    }
}

#Preview {
    TagvirwSwiftUIView()
}
