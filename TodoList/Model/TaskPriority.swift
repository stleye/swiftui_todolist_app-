//
//  Priority.swift
//  TodoList
//
//  Created by Sebastian Tleye on 03/09/2025.
//

import Foundation

enum TaskPriority: CaseIterable, Identifiable {

    var id: Self { self }

    case optional
    case normal
    case urgent
    
    var title: String {
        switch self {
        case .optional:
            "Optional"
        case .normal:
            "Normal"
        case .urgent:
            "Urgent"
        }
    }

}
