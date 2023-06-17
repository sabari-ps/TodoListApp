//
//  ListViewModel.swift
//  TodoListApp
//
//  Created by Sabarinath P S on 15/06/23.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var todos: [TodoItemModel] = [];
    
    init() {
        getTodos()
    }
    
    func getTodos() {
        let newItems = [
            TodoItemModel(title: "This is first todo!", completed: false),
            TodoItemModel(title: "This is the second!", completed: true),
            TodoItemModel(title: "And the third!", completed: false)]
        
        todos.append(contentsOf: newItems)
    }
    
    
    func onDeleteItem(indexSet: IndexSet) {
        todos.remove(atOffsets: indexSet)
    }
    
    func onMoveItem(from: IndexSet, to: Int) {
        todos.move(fromOffsets: from, toOffset: to)
    }
}
