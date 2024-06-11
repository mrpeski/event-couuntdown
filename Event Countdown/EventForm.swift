//
//  EventForm.swift
//  Event Countdown
//
//  Created by Olayinka Ogunwemimo on 11/06/2024.
//

import SwiftUI

struct EventForm: View {
    @State var form: Event = Event(id: UUID(), title: "", date: Date.now , color: Color.blue);

    var body: some View {
        NavigationStack {
            Form {
                Section("Event Information") {
                    TextField("Title", text: $form.title)
                    DatePicker("Date", selection: $form.date)
                    ColorPicker("Accent Color", selection: $form.color)
                    
                }
            }.navigationTitle("New Event")
                .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(true ? "Add Event" : "Edit (event title)") {
                        verifyCredentials()
                    }
                }
            }
        }
        
    }
    func verifyCredentials() {
        if form.title.isEmpty {
               
           } else {
               
           }
       }
}

#Preview {
    EventForm()
}
