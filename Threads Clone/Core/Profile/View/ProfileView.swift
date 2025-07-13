//
//  ProfileView.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 10/07/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadsFilter = .threads
    
    var filterBarWidth : CGFloat{
        let count = CGFloat(ProfileThreadsFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 18
    }
    @Namespace var animation
    var body: some View {
        ScrollView {
            //bio and stats
            VStack (spacing:20){
                HStack(alignment:.top){
                    VStack(alignment: .leading, spacing: 12) {
                        //fullname and username
                        VStack(alignment: .leading,spacing: 4){
                            Text("Charles Leclerc")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("charles_leclerc")
                                .font(.subheadline)
                        }
                        Text("Formula 1 Driver for Scuderia Ferrari")
                            .font(.subheadline)
                        
                        Text("2 followers")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    CircularImageProfileView()
                }
                Button {
                
                } label:{
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }

            }
            //users content view list
            VStack{
                HStack{
                    ForEach(ProfileThreadsFilter.allCases){ filter in
                        VStack{
                            Text(filter.title)
                                .font(.subheadline)
                                .fontWeight(selectedFilter==filter ? .semibold : .regular)
                            
                            if selectedFilter == filter {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width:filterBarWidth,height:1)
                                    .matchedGeometryEffect(id: "item", in: animation)
                                
                            }
                            else{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width:filterBarWidth,height:1)
                                
                            }
                               
                            
                            
                        }
                        .onTapGesture {
                            withAnimation(.spring()){
                                selectedFilter=filter
                            }
                        }
                    }
                }
                LazyVStack{
                    ForEach(0...10,id: \.self){thread in
                        ThreadCell()
                    }
                }
            }
            .padding(.vertical,8)
        }
        
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
