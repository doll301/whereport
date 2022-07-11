//
//  ContentView.swift
//  Whereport
//
//  Created by Ellen Doll on 7/6/22.
//
import FirebaseAuth
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel
    @EnvironmentObject var person: Person
    
    var body: some View {
        ZStack {
            Color("Background").edgesIgnoringSafeArea(.all)
            NavigationView {
                if viewModel.signedIn {
                    if person.isNewUser {
                        NewAllergensView()
                    } else {
                        DashboardView()
                    }
                } else {
                    OpeningScreenView()
                }
            }.navigationTitle("Sign In")
                .onAppear {
                    viewModel.signedIn = viewModel.isSignedIn
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
