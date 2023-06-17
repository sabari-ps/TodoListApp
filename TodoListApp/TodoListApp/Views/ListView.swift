//
//  ListView.swift
//  TodoListApp
//
//  Created by Sabarinath P S on 15/06/23.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var viewModel: ListViewModel
    var body: some View {
        List {
            ForEach(viewModel.todos) { todo in
                TodoListItem(item: todo)
            }
            .onDelete(perform: viewModel.onDeleteItem)
            .onMove(perform: viewModel.onMoveItem)
        }.navigationTitle("Todo List📝")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add", destination: AddTodoView())
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
            .listStyle(.plain)
    }
   
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }.environmentObject(ListViewModel())
    }
}

