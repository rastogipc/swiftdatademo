//
//  DataItem.swift
//  swiftdatademo
//
//  Created by Prakash Rastogi on 25/03/26.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
