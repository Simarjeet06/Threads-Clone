//
//  userCell.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 13/07/25.
//

import SwiftUI

struct userCell: View {
    var body: some View {
        HStack{
            CircularImageProfileView()
            
            VStack(alignment: .leading){
                Text("maxverstappen1")
                    .fontWeight(.semibold)
                
                Text("Max Verstappen")
                
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width:100,height:32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4),lineWidth:1)
                }
            
            
        }
        .padding(.horizontal)

    }
}

#Preview {
    userCell()
}
