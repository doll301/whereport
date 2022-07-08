//
//  LoginFieldsView.swift
//  Whereport
//
//  Created by Ellen Doll on 7/7/22.
//

import Foundation
import SwiftUI

struct LoginFieldView: View {
    @EnvironmentObject var viewModel: AppViewModel
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            
            Text("Login as a Returning User").font(.largeTitle).padding().frame(width: 250, alignment: .center).multilineTextAlignment(.center)
            
            Spacer().frame(height: 200)
            
            ZStack {
                TextField("email", text: $email)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .padding()
                    .frame(width: 350, height: 40)
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 365, height: 50)
            }
            
            Spacer().frame(height: 50)
            
            ZStack {
                SecureField("password", text: $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .padding()
                    .frame(width: 350, height: 40)
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 365, height: 50)
            }
            
            Spacer().frame(height: 100)
            
            Button(action: {
                
                guard !email.isEmpty, !password.isEmpty else { return }
                
                viewModel.signUp(email: email, password: password)
                
            }, label: {
                ZStack {
                    Circle().stroke(Color("AccentColor"), lineWidth: 2).frame(width: 50, height: 50, alignment: .center)
                    Image(systemName: "arrow.right")
                }
            })
            
        }
    }
    
}
