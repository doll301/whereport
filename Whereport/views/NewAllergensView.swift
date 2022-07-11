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
        
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Enter your Dietary Restrictions").font(.largeTitle).padding().frame(width: 400, height: 150, alignment: .center).multilineTextAlignment(.center)
                        
            HStack(spacing: 25) {
                
                // Add vegan to Person's allergens
                ZStack {
                    let fillColor: Color = isVegan ? Color("AccentColor") : Color("BackgroundColor")
                    let textColor: Color = isVegan ? Color("BackgroundColor") : Color("AccentColor")
                    
                    Capsule()
                        .strokeBorder(Color("AccentColor"), lineWidth: 2)
                        .background(Capsule().fill(fillColor))
                        .frame(height: 50)
                    Text("vegan")
                        .font(.title2)
                        .padding()
                        .foregroundColor(textColor)
                        
                }.onTapGesture {
                    
                    // Makes sure the allergen cannot be added twice
                    if let index = newAllergens.firstIndex(of: .vegan) {
                        newAllergens.remove(at: index)
                    } else {
                        newAllergens.append(.vegan)
                    }
                    
                    isVegan = !isVegan
                }
                
                // Add soy-free to Person's allergens
                ZStack {
                    let fillColor: Color = isSoy ? Color("AccentColor") : Color("BackgroundColor")
                    let textColor: Color = isSoy ? Color("BackgroundColor") : Color("AccentColor")
                    
                    Capsule()
                        .strokeBorder(Color("AccentColor"), lineWidth: 2)
                        .background(Capsule().fill(fillColor))
                        .frame(height: 50)
                    Text("soy-free")
                        .font(.title2)
                        .padding()
                        .foregroundColor(textColor)
                    
                }.onTapGesture {
                    
                    // Makes sure the allergen cannot be added twice
                    if let index = newAllergens.firstIndex(of: .soy) {
                        newAllergens.remove(at: index)
                    } else {
                        newAllergens.append(.soy)
                    }
                    
                    isSoy = !isSoy
                }
            }
            
            
            
            // Add lactose-intolerance to Person's allergens
            ZStack {
                let fillColor: Color = isLactose ? Color("AccentColor") : Color("BackgroundColor")
                let textColor: Color = isLactose ? Color("BackgroundColor") : Color("AccentColor")
                
                Capsule()
                    .strokeBorder(Color("AccentColor"), lineWidth: 2)
                    .background(Capsule().fill(fillColor))
                    .frame(height: 50)
                Text("lactose-intolerant")
                    .font(.title2)
                    .padding()
                    .foregroundColor(textColor)
                
            }.onTapGesture {
                
                // Makes sure the allergen cannot be added twice
                if let index = newAllergens.firstIndex(of: .lactose) {
                    newAllergens.remove(at: index)
                } else {
                    newAllergens.append(.lactose)
                }
                
                isLactose = !isLactose
            }
            
            HStack(spacing: 25) {
                
                // Add vegetarian to Person's allergens
                ZStack {
                    let fillColor: Color = isVegetarian ? Color("AccentColor") : Color("BackgroundColor")
                    let textColor: Color = isVegetarian ? Color("BackgroundColor") : Color("AccentColor")
                    
                    Capsule()
                        .strokeBorder(Color("AccentColor"), lineWidth: 2)
                        .background(Capsule().fill(fillColor))
                        .frame(height: 50)
                    Text("vegetarian")
                        .font(.title2)
                        .padding()
                        .foregroundColor(textColor)
                    
                }.onTapGesture {
                    
                    // Makes sure the allergen cannot be added twice
                    if let index = newAllergens.firstIndex(of: .vegetarian) {
                        newAllergens.remove(at: index)
                    } else {
                        newAllergens.append(.vegetarian)
                    }
                    
                    isVegetarian = !isVegetarian
                }
                
                // Add soy-free to Person's allergens
                ZStack {
                    let fillColor: Color = isHalal ? Color("AccentColor") : Color("BackgroundColor")
                    let textColor: Color = isHalal ? Color("BackgroundColor") : Color("AccentColor")
                    
                    Capsule()
                        .strokeBorder(Color("AccentColor"), lineWidth: 2)
                        .background(Capsule().fill(fillColor))
                        .frame(height: 50)
                    Text("halal")
                        .font(.title2)
                        .padding()
                        .foregroundColor(textColor)
                    
                }.onTapGesture {
                    
                    // Makes sure the allergen cannot be added twice
                    if let index = newAllergens.firstIndex(of: .halal) {
                        newAllergens.remove(at: index)
                    } else {
                        newAllergens.append(.halal)
                    }
                    
                    isHalal = !isHalal
                }
            }
            
            HStack(spacing: 25) {
                
                // Add vegetarian to Person's allergens
                ZStack {
                    let fillColor: Color = isKosher ? Color("AccentColor") : Color("BackgroundColor")
                    let textColor: Color = isKosher ? Color("BackgroundColor") : Color("AccentColor")
                    
                    Capsule()
                        .strokeBorder(Color("AccentColor"), lineWidth: 2)
                        .background(Capsule().fill(fillColor))
                        .frame(height: 50)
                    Text("kosher")
                        .font(.title2)
                        .padding()
                        .foregroundColor(textColor)
                    
                }.onTapGesture {
                    
                    // Makes sure the allergen cannot be added twice
                    if let index = newAllergens.firstIndex(of: .kosher) {
                        newAllergens.remove(at: index)
                    } else {
                        newAllergens.append(.kosher)
                    }
                    
                    isKosher = !isKosher
                }
                
                // Add soy-free to Person's allergens
                ZStack {
                    let fillColor: Color = isGluten ? Color("AccentColor") : Color("BackgroundColor")
                    let textColor: Color = isGluten ? Color("BackgroundColor") : Color("AccentColor")
                    
                    Capsule()
                        .strokeBorder(Color("AccentColor"), lineWidth: 2)
                        .background(Capsule().fill(fillColor))
                        .frame(height: 50)
                    Text("gluten-free")
                        .font(.title2)
                        .padding()
                        .foregroundColor(textColor)
                    
                }.onTapGesture {
                    
                    // Makes sure the allergen cannot be added twice
                    if let index = newAllergens.firstIndex(of: .gluten) {
                        newAllergens.remove(at: index)
                    } else {
                        newAllergens.append(.gluten)
                    }
                    
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
