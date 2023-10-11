//
//  DataController.swift
//  Bookworm
//
//  Created by Marcelo Amaral Alves on 2023-10-10.
//

// This prepare swiftui to load our data!

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
