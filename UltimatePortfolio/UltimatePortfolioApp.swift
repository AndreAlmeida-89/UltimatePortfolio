//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Andre Almeida on 06/06/21.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
