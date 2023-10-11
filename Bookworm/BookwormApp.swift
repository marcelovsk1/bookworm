//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Marcelo Amaral Alves on 2023-10-10.
//
// .enviroment enject all of our data that we've load

import SwiftUI

@main
struct BookwormApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
