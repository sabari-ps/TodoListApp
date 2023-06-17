//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by Sabarinath P S on 15/06/23.
//

import SwiftUI

@main
struct TodoListAppApp: App {
    @StateObject  var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
