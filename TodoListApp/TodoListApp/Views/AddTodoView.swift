//
//  AddTodoView.swift
//  TodoListApp
//
//  Created by Sabarinath P S on 15/06/23.
//

import SwiftUI

struct AddTodoView: View {
    @State var textFieldText: String = "";
    
    let textFieldBg = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add todo", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 48)
                    .background(Color(textFieldBg))
                    .cornerRadius(8)
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height: 48)
                        .frame(maxWidth: .infinity)
                        
                        .background(Color.accentColor)
                        .cornerRadius(8)
                })
            }.padding()
        }.navigationTitle("Add Todo Item")
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddTodoView()
        }
    }
}
