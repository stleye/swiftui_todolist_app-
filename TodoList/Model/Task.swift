//
//  Task.swift
//  TodoList
//
//  Created by Sebastian Tleye on 03/09/2025.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    
    var id = UUID()
    
    var title: String
    var priority: TaskPriority
    var done = false
    
    var backgroundColor: Color {
        switch self.priority {
        case .optional:
            return Color.green
        case .normal:
            return Color.blue
        case .urgent:
            return Color.red
        }
    }
    
    mutating func toggleDone() {
        done.toggle()
    }
    
}
