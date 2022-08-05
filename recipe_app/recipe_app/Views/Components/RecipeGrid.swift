//
//  RecipeGrid.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import SwiftUI

struct RecipeGrid: View {
    var recipes : [Recipe]
    var body: some View {
        VStack{
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")"
                )
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)],spacing : 15) {
                ForEach(recipes) {
                    recipe in NavigationLink(destination : RecipeDetailsView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
        }
            .padding(.horizontal)
    }
}

struct RecipeGrid_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
        RecipeGrid(recipes: Recipe.all)
        }
        
    }
}
