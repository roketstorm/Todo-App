//
//  ContentView.swift
//  Todo App
//
//  Created by Artur Shamsutdinov on 27.01.2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @Environment(\.managedObjectContext) var managedObjectContext
    @State private var showingAddTodoView: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("Hello, World!")
            } //: LIST
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.showingAddTodoView.toggle()
            }) {
                Image(systemName: "plus")
            } //: ADD BUTTON
            .sheet(isPresented: $showingAddTodoView) {
                AddTodoView().environment(\.managedObjectContext, self.managedObjectContext)
            }
        )
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone SE (2nd generation)")
    }
}
