//
//  ContentView.swift
//  Event Countdown
//
//  Created by Olayinka Ogunwemimo on 11/06/2024.
//

import SwiftUI

struct Event: Identifiable {
//    static func < (lhs: Event, rhs: Event) -> Bool {
//        return lhs.title > rhs.title
//    }
    var id: UUID
    var title: String
    var date: Date
    var color: Color
}

struct ContentView: View {
    var events: [Event] = []
    
    // students.append("Maxime")
    
    var body: some View {
        EventsView()
    }
}

#Preview {
    ContentView()
}
