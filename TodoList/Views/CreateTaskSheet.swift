//
//  CreateTaskSheet.swift
//  TodoList
//
//  Created by Sebastian Tleye on 03/09/2025.
//

import SwiftUI

struct CreateTaskSheet: View {
    
    @ObservedObject var viewModel: TodoListViewModel
    @State private var taskTitle = ""
    @State private var taskPriority = TaskPriority.normal
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(alignment: .leading) {
            Text("Task Title")
                .fontWeight(.semibold)
            TextField("Task Title", text: $taskTitle)
                .textFieldStyle(.roundedBorder)
            Text("Priority")
                .fontWeight(.semibold)
                .padding(.top)
            Picker("Choose Priority", selection: $taskPriority) {
                ForEach(TaskPriority.allCases) { priority in
                    Text(priority.title)
                }
            }
            Button {
                viewModel.addTask(task: Task(title: taskTitle,
                                             priority: taskPriority))
                dismiss()
            } label: {
                Text("Add Task")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(height: 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            .padding(.top)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

#Preview {
    CreateTaskSheet(viewModel: TodoListViewModel())
}
