//
//  ListView.swift
//  swiftUI project
//
//  Created by Serper Kurmanbek on 15.01.2024.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var placeName = ""
    var image = ""
}
struct PersonRow: View {
    
    var person: Person
    
    var body: some View{
        HStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 76.0, height: 76.0)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1 ))
            VStack {
                Text(person.placeName )
            }
        }
    }
}

struct ListView: View {
    var persons = [Person(placeName: "Эйфелева Башня", image: "Башня"),
                   Person(placeName: "Колизей", image: "Колизей"),
                   Person(placeName: "Статуя Свободы",image: "Статуя")]
  
    
    
    var body: some View {
          
        NavigationView {
            List (persons) { item in
                NavigationLink(destination: ContentView(person:item)) {                 PersonRow(person: item)

                }
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListView()
}
