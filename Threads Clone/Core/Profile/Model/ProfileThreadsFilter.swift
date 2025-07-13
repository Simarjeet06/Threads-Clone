//
//  ProfileThreadsFilter.swift
//  Threads Clone
//
//  Created by Simarjeet Kaur on 14/07/25.
//

import Foundation

enum ProfileThreadsFilter: Int, CaseIterable,Identifiable{
    case threads
    case replies
//    case likes
    
    var title:String{
        switch self{
        case .threads: return "Threads"
        case .replies: return "Replies"
//        case .likes : return "Likes"
        }
        
    }
    var id: Int {
        return self.rawValue
    }
}
