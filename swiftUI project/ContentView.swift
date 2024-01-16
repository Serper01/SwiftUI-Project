//
//  ContentView.swift
//  swiftUI project
//
//  Created by Serper Kurmanbek on 15.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    var person: Person
    
    @State var a = ""
    @State var b = ""
    @State var sum = 0
    
    
    
    var body: some View {
        VStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 176.0, height: 176.0)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1 ))
            
                Text(person.placeName )
             
            Text("sum = \(sum)")
            
            TextField("Enter a", text: $a)
                .padding(.all)
                .frame(width: 100)
            TextField("Enter b", text: $b)
                .padding(.all)
                .frame(width: 100)
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                sum = Int(a)! + Int(b)!
            }
            .foregroundColor(.green)
            .padding(.all)

            
        }
        .padding()
    }
}

#Preview {
    ContentView(person: Person(placeName: "Эйфелева Башня", image: "Башня"))
}
