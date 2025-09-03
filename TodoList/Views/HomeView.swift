//
//  ContentView.swift
//  TodoList
//
//  Created by Sebastian Tleye on 03/09/2025.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = TodoListViewModel()
    @State private var showCreateTaskSheet = false

    private func delete(_ offsets: IndexSet) {
        viewModel.removeTasks(at: offsets)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    ForEach(viewModel.tasks) { task in
                        TaskView(task: task)
                    }
                    .onDelete(perform: delete)
                }
            }
            .navigationTitle("Tasks")
            .sheet(isPresented: $showCreateTaskSheet,
                   onDismiss: {
                
            }, content: {
                CreateTaskSheet(viewModel: viewModel)
            })
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showCreateTaskSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
