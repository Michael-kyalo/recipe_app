//
//  TitledText.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import SwiftUI

struct TitledText: View {
    var title: String
    var content:String
    var body: some View {
        VStack (alignment:.leading, spacing: 30){
            Text(title)
                .font(.headline)
            Text(content)
        }
    }
}

struct TitledText_Previews: PreviewProvider {
    static var previews: some View {
        TitledText(title: "Ingredients", content: Recipe.all[0].ingredients)
    }
}
