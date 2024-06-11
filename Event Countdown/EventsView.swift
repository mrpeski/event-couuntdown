//
//  EventView.swift
//  Event Countdown
//
//  Created by Olayinka Ogunwemimo on 11/06/2024.
//

import SwiftUI

struct EventsView: View {
    @State var groceries = [
        "Milk",
        "Bread",
        "Eggs",
        "Coffee",
        "Tomatoes"
    ]
    var body: some View {
        NavigationStack{
            List(groceries.indices, id: \.self) {
                idx in
                EventRow().swipeActions {
                    Button("Delete"){
                        groceries.remove(at: idx)
                    }
                    .tint(.red)
                }
            } .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    NavigationLink {
                        EventForm()
                    } label: {
                        Label("Add Event", systemImage: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    EventsView()
}
