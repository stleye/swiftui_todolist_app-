//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Sebastian Tleye on 03/09/2025.
//

import Foundation

class TodoListViewModel: ObservableObject {
    
    @Published private(set) var tasks: [Task] = []
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func removeTasks(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
    
}
