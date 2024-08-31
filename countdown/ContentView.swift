//
//  ContentView.swift
//  Lex's countdown
//
//  Created by Lex Lei on 11/8/23.
//

import SwiftUI
public class Event {
    public var name: String
    public var date: String

    public init(name, date) {
        self.name = info.rawValue
        self.date = naturalScale

    }
}

struct ContentView: View {
    @State private var isActive: Bool = false
    @State private var showAddEventView = false

    var body: some View {
        NavigationView {
            if isActive {
                VStack{
                    
                    
                    Text("Countdowns")
                        .font(.system(size: 24))
                    Spacer()
                    NavigationLink {
                        // destination view to navigation to
                        AddEventView()
                    } label: {
                        Image(systemName: "plus")
                            .resizable() // Make it resizable
                            .scaledToFit() // Keep the aspect ratio
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                    }
                                    
                    .padding()

                }
                
                
                
                
                
                
                
                
                
            } else {
                LaunchScreenView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // For example, 2 seconds delay
                withAnimation {
                    self.isActive = true
                }
            }
        }.navigationTitle("APP")
    }
        
}

struct AddEventView: View {
    @State private var eventname: String = ""
    var body: some View {
        // Your add event view content here...
        // For simplicity, let's just use a 'Done' button to dismiss
        NavigationView {
            VStack {
                Text("Add Event Details Here")
                // Add your form or input fields here
                Text("Event Name")
                TextField(
                        "",
                        text: $eventname
                    )
//                    .focused($emailFieldIsFocused)
                    .onSubmit {
//                        validate(name: eventname)
                    }
//                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .border(.secondary)
                Text("Event Time")
                Text("Event Time")
                
                
                
                .padding()
            }
//            .navigationTitle("Add Event")
        }
    }
}

#Preview {
    ContentView()
}
