//
//  TodoListItem.swift
//  TodoListApp
//
//  Created by Sabarinath P S on 15/06/23.
//

import SwiftUI

struct TodoListItem: View {
    let item: TodoItemModel;
    
    var body: some View {
        HStack {
            Image(systemName: item.completed ? "checkmark.square" : "circle")
                .foregroundColor(item.completed ? .green : .red)
            Text(item.title)
            Spacer()
        }.padding(.vertical, 8)
            .font(.title2)
    }
}


struct TodoListItem_Previews: PreviewProvider {
    static var item1: TodoItemModel = TodoItemModel(title: "This is first todo!", completed: false)
    static var item2: TodoItemModel = TodoItemModel(title: "This is the second!", completed: true)
    static var previews: some View {
        Group {
            TodoListItem(item: item1)
            TodoListItem(item: item2)
        }.previewLayout(.sizeThatFits)
    }
}
