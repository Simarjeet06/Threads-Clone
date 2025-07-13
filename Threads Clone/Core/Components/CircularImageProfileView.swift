//
//  CircularImageProfileView.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 13/07/25.
//

import SwiftUI

struct CircularImageProfileView: View {
    var body: some View {
        Image("max-verstappen")
            .resizable()
            .scaledToFill()
            .frame(width: 42, height: 42)
            .clipShape(Circle())
    }
}

#Preview {
    CircularImageProfileView()
}
