//
//  RecipeDetailsView.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import SwiftUI

struct RecipeDetailsView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                   
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight:.infinity)
                  
            }
            .frame(width: .infinity, height: 300, alignment: .top)
            .background(LinearGradient(gradient: Gradient(
                colors: [Color(.gray).opacity(0.3), Color(.gray)]
            ), startPoint: .topLeading, endPoint: UnitPoint.bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y: 10)
            VStack(spacing:30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(recipe.description)
                    
                    if  !recipe.ingredients.isEmpty {  TitledText(title: "Ingredients", content: recipe.ingredients)}
                    
                    if  !recipe.ingredients.isEmpty {
                        TitledText(title: "Directions", content: recipe.directions)
                        
                    }
                    
                }
            }.frame(maxWidth:.infinity, alignment: .leading)
                .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: Recipe.all[0])
    }
}
