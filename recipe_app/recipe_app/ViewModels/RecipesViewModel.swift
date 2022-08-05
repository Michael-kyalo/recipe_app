//
//  RecipesViewModel.swift
//  recipe_app
//
//  Created by rt on 05/08/2022.
//

import Foundation

class RecipesViewModel : ObservableObject {
    @Published private(set) var recipes: [Recipe]
    
    init (){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe:Recipe){
        recipes.append(recipe)
    }
}
