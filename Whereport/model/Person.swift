//
//  Person.swift
//  Whereport
//
//  Created by Ellen Doll on 7/10/22.
//

import Foundation

class Person: ObservableObject {
    var firstName: String
    var lastName: String
    private var _allergens: [Allergen]
    var isNewUser: Bool // Used to decide to show NewAllergensView
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self._allergens = []
        self.isNewUser = true
    }
    
    init(firstName: String, lastName: String, _allergens: [Allergen]) {
        self.firstName = firstName
        self.lastName = lastName
        self._allergens = _allergens
        self.isNewUser = true
    }
    
    // Returns the Peron's allergen list
    func allergens() -> [Allergen] {
        return _allergens
    }
    // Adds an allergen to the Person's allergen list
    func addAllergen(allergen: Allergen) {
        self._allergens.append(allergen)
    }
    
    /*
     Takes in an Allergen list and sets it to _allergens.
     Used when the user first creates their account and sets
     their dietary restrictions.
     */
    func setAllergens(_ newAllergens: [Allergen]) {
        self._allergens = newAllergens
        
        // Designates that the user has added their preferences
        self.isNewUser = false
    }
    
}
