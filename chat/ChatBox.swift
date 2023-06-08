//
//  ChatBox.swift
//  chat
//
//  Created by Vinh Ngo on 28/05/2023.
//

import SwiftUI

struct ChatBox: View {
    @State var name: String = ""
    
    private let numberFormatter: NumberFormatter
    
    init() {
        numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.maximumFractionDigits = 2
    }
    
    var body: some View {
        NavigationView {
            // MARK: HEADER
            
            VStack  {
                // MARK: CHAT MESSAGES
                
                List {
                    Text("HEllO").listRowBackground(Color.green)

                }
           
                    
                // MARK: ENTER BOX
        
                HStack {
                    TextField("Nhắn tin...",    text: $name)
                        .keyboardType(.numberPad)
                        .padding(20)
                        .overlay(RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 2))
                        .frame(height: 100)
                    Button( action: {
                
                        print("TAP")
                    }) {
                              Text("Send")
                           }
                }.frame(minHeight: CGFloat(50)).padding()
            
            }.navigationTitle(Text("Vinh Ngo"))
                .navigationBarTitleDisplayMode(.inline)
                .padding(.all)
        }
    }
}

struct ChatBox_Previews: PreviewProvider {
    static var previews: some View {
        ChatBox()
    }
}

 
