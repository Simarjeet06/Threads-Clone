//
//  ButtonModifier.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 04/07/25.
//
import SwiftUI

struct  ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width:350, height:45)
            .background(Color(.systemGray))
            .cornerRadius(8)
    }
}
