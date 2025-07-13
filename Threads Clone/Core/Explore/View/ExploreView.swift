//
//  ExploreView.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 10/07/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText=""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0...10,id:\.self){ user in
                        VStack {
                            userCell()
                            Divider()
                        }
                        .padding(.vertical,4)
                    }
                    
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
