//
//  HomeView.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesViewModel : RecipesViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                RecipeGrid(recipes: recipesViewModel.recipes)
            }.navigationTitle("My Recipes")
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
