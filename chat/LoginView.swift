//
//  SignInSignUp.swift
//  chat
//
//  Created by Vinh Ngo on 08/06/2023.
//

import SwiftUI

struct LoginView: View {
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ScrollView {
            VStack {
                Picker(selection: $isLoginMode, label: Text("Picker Here")) {
                    Text("Login").tag(true)
                    Text("Create Account").tag(false)
                }.pickerStyle(SegmentedPickerStyle())
                
                if isLoginMode {
                    Button {} label: {
                        Image(systemName: "person.fill").font(.system(size: 64))
                    }
                }
                
                Group {
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                     
                    SecureField("Password", text: $password)
                }
                .padding(12)
                .background(.white)
            
                Button {
                    handleAction()
                } label: {
                    HStack {
                        Spacer()
                        Text(isLoginMode ? "Login" : "Create Account")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .font(.system(size: 14, weight: .semibold))
                        Spacer()
                    }.background(Color.blue)
                }
                
            }.padding()
        }.navigationTitle(isLoginMode ? "Login" : "Create Account")
            .background(Color(.init(white: 0, alpha: 0.05)).ignoresSafeArea())
    }
    
    private func handleAction() {
        if isLoginMode {
            print("Should log into Firebase with existing credentials")
        } else {
            print("Register a new account inside of Firebase.....")
        }
    }
}

struct SignInSignUp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginView()
        }
    }
}
