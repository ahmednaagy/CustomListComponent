//
//  ContentView.swift
//  CustomListComponent
//
//  Created by Ahmed Nagy on 24/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    let items = ["Item 1", "Item 2", "Item 3"]

    
    var body: some View {
        CustomListView(items: items) { selectedItem in
            print("Selected item: \(selectedItem)")
        } content: { item in
            Text(item)
        }

    }
}

#Preview {
    ContentView()
}
