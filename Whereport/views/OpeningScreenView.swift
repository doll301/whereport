//
//  OpeningScreenView.swift
//  Whereport
//
//  Created by Ellen Doll on 7/7/22.
//

import Foundation
import SwiftUI

// Main screen when a user is not currently signed in
struct OpeningScreenView: View {
    @EnvironmentObject var viewModel: AppViewModel

    var body: some View {
        VStack {
            ZStack {
                Text("Welcome to Whereport").font(.largeTitle).frame(width: 200, height: 100, alignment: .center).multilineTextAlignment(.center)
//                Circle()
//                    .stroke(Color("AccentColor"), lineWidth: 2)
//                    .frame(width: 250, height: 250)
//                    .rotationEffect(.degrees(0))
            }
            Spacer().frame(height: 50)
            Image(systemName: "airplane.arrival").resizable().frame(width: 75, height: 75, alignment: .center)
            Spacer().frame(height: 100)
            LoginButtonView().padding()
            Text("or").font(.title).padding()
            SignUpButtonView().padding()
        }
    }
}

// Login button that takes you to the LoginFieldView
struct LoginButtonView: View {
    @EnvironmentObject var viewModel: AppViewModel


    
    var body: some View {
        NavigationLink(destination: LoginFieldView()) {
            ZStack {
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 175, height: 75)
                Text("Login").font(.title)
            }
        }
    }
}

// Signup button that takes you to the SignUpFieldView
struct SignUpButtonView: View {
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationLink(destination: SignUpFieldView()) {
            ZStack {
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 175, height: 75)
                Text("Sign Up").font(.title)
            }
        }
    }
}
