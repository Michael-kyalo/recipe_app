//
//  RecipeModel.swift
//  recipe_app
//
//  Created by rt on 03/08/2022.
//

import Foundation

enum Category :String, CaseIterable, Identifiable {
    var id : String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}
struct Recipe : Identifiable {
    let id = UUID()
    let name : String
    let image :  String
    let description :  String
    let ingredients : String
    let directions : String
    let category : Category.RawValue
    let datePublished :  String
    let url : String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Creamy Carrot Soup",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "This is a bold-hued soup",
            ingredients: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            directions:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
       
            category:"Soup",
            datePublished:"",
            url:""
        ),
        Recipe(
            name: "Apple and salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-for-Wordpress-360x270-c.jpg",
            description: "This is a bold-hued soup",
            ingredients: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            directions:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            

            category:"Soup",
            datePublished:"",
            url:""
        ),
        Recipe(
            name: "Apple and salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-for-Wordpress-360x270-c.jpg",
            description: "This is a bold-hued soup",
            ingredients: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            directions:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            

            category:"Soup",
            datePublished:"",
            url:""
        ),
        Recipe(
            name: "Creamy Carrot Soup",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "This is a bold-hued soup",
            ingredients: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            directions:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
       
            category:"Salad",
            datePublished:"",
            url:""
        ),
        Recipe(
            name: "Apple and salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-for-Wordpress-360x270-c.jpg",
            description: "This is a bold-hued soup",
            ingredients: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            directions:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            

            category:"Salad",
            datePublished:"",
            url:""
        ),
        Recipe(
            name: "Apple and salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-for-Wordpress-360x270-c.jpg",
            description: "This is a bold-hued soup",
            ingredients: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            directions:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
            

            category:"Salad",
            datePublished:"",
            url:""
        )
    ]
}
