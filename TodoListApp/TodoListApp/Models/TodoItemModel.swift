//
//  TodoItemModel.swift
//  TodoListApp
//
//  Created by Sabarinath P S on 15/06/23.
//

import Foundation


struct TodoItemModel: Identifiable {
    let id: String = UUID().uuidString; 
    let title: String;
    let completed: Bool
}
