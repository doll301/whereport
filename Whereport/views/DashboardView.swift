//
//  DashboardView.swift
//  Whereport
//
//  Created by Ellen Doll on 7/7/22.
//

import Foundation
import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        VStack {
            Text("You are signed in")
            
            Button(action: {
                viewModel.signOut()
            }, label: {
                Text("Sign Out").frame(width: 200, height: 50).background(Color.green).foregroundColor(Color.blue)
            })
        }
    }
    
}
