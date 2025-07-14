//
//  EditProfileView.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 15/07/25.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio=""
    @State private var link=""
    @State private var isPrivateProfile=false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom,.horizontal])
                
                VStack{
                    //name and profile image
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Charles Leclerc")
                        }
                       
                        
                        Spacer()
                        CircularImageProfileView()
                        
                    }
                    
                    Divider()
                    
                    //bio field
                    
                    VStack (alignment:.leading){
                        
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your Bio..", text: $bio, axis: .vertical)
                    }
               
                    
                    Divider()
                    
                    VStack (alignment:.leading){
                        
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Add link..", text: $link)
                    }
                   
                    
                    Divider()
                    
                    Toggle("Private Profile", isOn:$isPrivateProfile)
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Cancel")
                            .font(.subheadline)
                            .foregroundColor(.black)
                    }

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
