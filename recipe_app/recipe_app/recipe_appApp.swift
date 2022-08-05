//
//  recipe_appApp.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import SwiftUI

@main
struct recipe_appApp: App {
@StateObject var recipesViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
