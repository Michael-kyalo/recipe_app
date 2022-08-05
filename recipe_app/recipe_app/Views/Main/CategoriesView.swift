//
//  CategoriesView.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var recipesViewModel : RecipesViewModel
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases){
                    category in NavigationLink(destination: ScrollView {
                        RecipeGrid(recipes: recipesViewModel.recipes.filter{
                            $0.category == category.rawValue
                        })
                    }) {
                        Text(category.rawValue + "s")
                    }
                }
            }
                .navigationTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .environmentObject(RecipesViewModel())
    }
}
