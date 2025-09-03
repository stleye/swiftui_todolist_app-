//
//  TaskView.swift
//  TodoList
//
//  Created by Sebastian Tleye on 03/09/2025.
//

import SwiftUI

struct TaskView: View {

    @State var task: Task

    var body: some View {
        HStack {
            Image(systemName: task.done ? "checkmark.circle" : "circle")
            Text(task.title)
            Spacer()
            Text(task.priority.title)
                .font(.system(size: 18, weight: .semibold))
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(
                    Capsule(style: .circular)
                        .fill(task.backgroundColor.opacity(0.5))
                )
                .foregroundStyle(task.backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .onTapGesture {
            task.toggleDone()
        }
    }
}

#Preview {
    TaskView(task: Task(title: "Walk the dog",
                        priority: .optional))
}
