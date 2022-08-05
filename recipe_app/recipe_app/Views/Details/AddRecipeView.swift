//
//  AddRecipeView.swift
//  recipe_app
//
//  Created by rt on 05/08/2022.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name:String  = ""
    @State private var SelectedCategory:Category  = Category.main
    @State private var navToRecipe:Bool =  false
    @State private var description:String  = ""
    @State private var ingredients:String  = ""
    @State private var directions:String  = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var recipesViewModel:RecipesViewModel
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Name")) {
                    TextField( "Recipe Name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category",selection: $SelectedCategory){
                        ForEach(Category.allCases){
                            category in Text(category.rawValue)
                                .tag(category)
                        }
                    }.pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
             
                
            }   .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                    
                }
                ToolbarItem {
                    NavigationLink(isActive: $navToRecipe) {
                        RecipeDetailsView(recipe:  Recipe.all.sorted{$0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            navToRecipe = true
                            saveRecipe()
                        } label: {
                            Label("Done",systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty || description.isEmpty)
                    }

                  
                }
            }
            .navigationBarTitle("Add Recipe")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe()
    {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: SelectedCategory.rawValue, datePublished: datePublished, url: "")
        
        recipesViewModel.addRecipe(recipe: recipe)
    }}


