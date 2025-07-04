//
//  RegistrationView.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 04/07/25.
//

import SwiftUI


struct RegistrationView: View {
    @State private var email=""
    @State private var password=""
    @State private var fullname=""
    @State private var username=""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        
        VStack{
            Image("thread-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width:120 , height:120)
                .padding(.top,200)
                .padding(.bottom,20)
            
        }
        VStack{
            TextField("Enter your Email", text: $email)
                .modifier(ThreadsTextFieldModifier())
            
            SecureField("Enter your password", text: $password)
                .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your full name", text: $fullname)
                .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your username", text: $username)
                .modifier(ThreadsTextFieldModifier())
            
            Button{
                
            } label:{
                Text("Sign Up")
                    .modifier(ButtonModifier())
                
            }.padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button(action:{
                dismiss()
            })
            {HStack(spacing:3){
                Text("Already have an account?")
                Text("Sign In")
                    .fontWeight(.semibold)
            }
            .foregroundColor(Color.black)
            .font(.footnote)
                
            }
            .padding(.vertical,16)
        }
    }
}

#Preview {
    RegistrationView()
}
