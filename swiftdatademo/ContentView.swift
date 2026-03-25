//
//  ContentView.swift
//  swiftdatademo
//
//  Created by Prakash Rastogi on 25/03/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            Text("Tap this button tyo add item.")
            Button("Add an item") {
                addItem()
            }
            List {
                ForEach (items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }
                    }
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        deleteItem(items[index])
                    }
                })
            }
        }
        .padding()
    }
    
    func addItem() {
        let item = DataItem(name: "Test Item")
        context.insert(item)
    }
    
    func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    func updateItem(_ item: DataItem) {
        item.name = "Updated Text Name"
        try? context.save()
    }
    
}

//#Preview {
//    ContentView()
//}
