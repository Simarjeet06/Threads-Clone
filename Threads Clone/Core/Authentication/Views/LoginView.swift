//
//  LoginView.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 04/07/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email=""
    @State private var password=""
    
    var body: some View {
        NavigationStack{
            Spacer()
            VStack{
                Image("thread-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width:120 , height:120)
                    .padding()
                
                
                
            }
            
            VStack{
                TextField("Enter your Email", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
            }
            NavigationLink{
                Text("Forgot Password?")
            }label:{
                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding(.vertical)
                    .padding(.trailing,28)
                    .frame(maxWidth:.infinity,alignment:.trailing)
                
            }
            Button{
                
            } label:{
                Text("Login")
                    .modifier(ButtonModifier())
                
            }
            
            Spacer()
            
            Divider()
            
            NavigationLink{
                RegistrationView().navigationBarBackButtonHidden(true)
            } label:{
                HStack(spacing:3){
                    Text("Don't have an account?")
                    Text("Sign Up")
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
    LoginView()
}
