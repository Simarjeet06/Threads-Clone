//
//  ThreadsTextFieldModifier.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 04/07/25.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier{
    func body (content: Content) -> some View {
        content
            .font(.headline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
