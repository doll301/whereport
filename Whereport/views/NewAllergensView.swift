//
//  NewAllergensView.swift
//  Whereport
//
//  Created by Ellen Doll on 7/10/22.
//

import Foundation
import SwiftUI

struct NewAllergensView: View {
    @EnvironmentObject var person: Person
    @State var newAllergens: [Allergen] = []
    
    // Keeps track of which items have been selected so they can be highlighted
    @State var isVegan = false
    @State var isSoy = false
    @State var isLactose = false
    @State var isVegetarian = false
    @State var isHalal = false
    @State var isKosher = false
    @State var isGluten = false
    
    // TODO: Change color of capsules and text upon selection
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Enter your Dietary Restrictions").font(.largeTitle).padding().frame(width: 400, height: 150, alignment: .center).multilineTextAlignment(.center)
                        
            HStack(spacing: 25) {
                
                // Add vegan to Person's allergens
                ZStack {
                    Text("vegan")
                        .font(.title2)
                        .padding()
                    Capsule()
                        .stroke(Color("AccentColor"), lineWidth: 2)
                        .frame(height: 50)
                }.onTapGesture {
                    newAllergens.append(.vegan)
                    isVegan = !isVegan
                }
                
                // Add soy-free to Person's allergens
                ZStack {
                    Text("soy-free")
                        .font(.title2)
                        .padding()
                    Capsule()
                        .stroke(Color("AccentColor"), lineWidth: 2)
                        .frame(height: 50)
                }.onTapGesture {
                    newAllergens.append(.soy)
                    isSoy = !isSoy
                }
            }
            
            
            
            // Add lactose-intolerance to Person's allergens
            ZStack {
                Text("lactose-intolerance")
                    .font(.title2)
                    .padding()
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(height: 50)
            }.onTapGesture {
                newAllergens.append(.lactose)
                isLactose = !isLactose
            }
            
            HStack(spacing: 25) {
                
                // Add vegetarian to Person's allergens
                ZStack {
                    Text("vegetarian")
                        .font(.title2)
                        .padding()
                    Capsule()
                        .stroke(Color("AccentColor"), lineWidth: 2)
                        .frame(height: 50)
                }.onTapGesture {
                    newAllergens.append(.vegetarian)
                    isVegetarian = !isVegetarian
                }
                
                // Add soy-free to Person's allergens
                ZStack {
                    Text("halal")
                        .font(.title2)
                        .padding()
                    Capsule()
                        .stroke(Color("AccentColor"), lineWidth: 2)
                        .frame(height: 50)
                }.onTapGesture {
                    newAllergens.append(.halal)
                    isHalal = !isHalal
                }
            }
            
            HStack(spacing: 25) {
                
                // Add vegetarian to Person's allergens
                ZStack {
                    Text("kosher")
                        .font(.title2)
                        .padding()
                    Capsule()
                        .stroke(Color("AccentColor"), lineWidth: 2)
                        .frame(height: 50)
                }.onTapGesture {
                    newAllergens.append(.kosher)
                    isKosher = !isKosher
                }
                
                // Add soy-free to Person's allergens
                ZStack {
                    Text("gluten-free")
                        .font(.title2)
                        .padding()
                    Capsule()
                        .stroke(Color("AccentColor"), lineWidth: 2)
                        .frame(height: 50)
                }.onTapGesture {
                    newAllergens.append(.gluten)
                    isGluten = !isGluten
                }
            }
                    
            Spacer().frame(height: 100)
            
            Button(action: {
                
                person.setAllergens(newAllergens)
                print(person.allergens())
                
            }, label: {
                ZStack {
                    Circle().stroke(Color("AccentColor"), lineWidth: 2).frame(width: 50, height: 50, alignment: .center)
                    Image(systemName: "arrow.right")
                }
            })
            
        }.padding([.horizontal], 15)
    }
    
}
