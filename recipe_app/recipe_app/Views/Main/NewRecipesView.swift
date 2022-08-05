//
//  NewRecipesView.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import SwiftUI

struct NewRecipesView: View {
    @State private var showAddRecipeSheet: Bool = false
    var body: some View {
        NavigationView {
            Button("Add New Recipe"){
                showAddRecipeSheet.toggle()
            }
                .navigationTitle("New Recipes")
            
        }
        .sheet(isPresented: $showAddRecipeSheet) {
            AddRecipeView()
        }
    }
}

struct NewRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipesView()
    }
}
