//
//  ContentView.swift
//  Bookworm
//
//  Created by Marcelo Amaral Alves on 2023-10-10.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
            Button("Add") {
                let firstNames = ["Harry", "Liam", "Niall", "Louis", "Zayn"]
                let lastNames = ["Styles", "Payne", "Horran", "Tomilson", "Malik"]
                
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"
                
                try? moc.save()
            }
        }
    }
}

#Preview {
    ContentView()
}
