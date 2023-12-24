//
//  CustomListView.swift
//  CustomListComponent
//
//  Created by Ahmed Nagy on 25/12/2023.
//

import SwiftUI

struct CustomListView<Content: View>: View {
    var items: [String]
    var onItemClick: (String) -> Void
    var content: (String) -> Content
    
    init(items: [String], onItemClick: @escaping (String) -> Void, @ViewBuilder content: @escaping (String) -> Content) {
        self.items = items
        self.onItemClick = onItemClick
        self.content = content
    }
    
    var body: some View {
        List(items, id: \.self) { item in
            self.content(item)
                .onTapGesture {
                    self.onItemClick(item)
                }
        }
    }
}


#Preview {
    CustomListView(
        items: ["Item 1", "Item 2", "Item 3"],
        onItemClick: { selectedItem in
            print("Selected item: \(selectedItem)")
        }
    ) { item in
        Text(item)
    }
}
