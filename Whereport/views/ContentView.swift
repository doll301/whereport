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
    
    var body: some View {
        ZStack {
            Color("Background").edgesIgnoringSafeArea(.all)
            NavigationView {
                if viewModel.signedIn {
                    DashboardView()
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
