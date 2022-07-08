//
//  SignUpFieldView.swift
//  Whereport
//
//  Created by Ellen Doll on 7/7/22.
//

import Foundation
import SwiftUI

struct SignUpFieldView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var phoneNumber = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        VStack {
            
            Text("Sign Up for an Account").font(.largeTitle).padding().frame(width: 400, height: 100, alignment: .center).multilineTextAlignment(.center)
            
            Spacer().frame(height: 100)
            

            
            ZStack {
                TextField("first name", text: $firstName)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .padding()
                    .frame(width: 350, height: 40)
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 365, height: 50)
            }
            
            
            
            ZStack {
                TextField("last name", text: $lastName)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .padding()
                    .frame(width: 350, height: 40)
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 365, height: 50)
            }

            ZStack {
                TextField("phone number", text: $phoneNumber)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .padding()
                    .frame(width: 350, height: 40)
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 365, height: 50)
            }
            
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
            
            ZStack {
                TextField("password", text: $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .padding()
                    .frame(width: 350, height: 40)
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 365, height: 50)
            }

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
            
            ZStack {
                SecureField("confirm password", text: $confirmPassword)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .padding()
                    .frame(width: 350, height: 40)
                Capsule()
                    .stroke(Color("AccentColor"), lineWidth: 2)
                    .frame(width: 365, height: 50)
            }
            
            Button(action: {
                
                guard !email.isEmpty, !password.isEmpty else { return }
                
                viewModel.signUp(email: email, password: password)
                
            }, label: {
                ZStack {
                    Text("Create Account").font(.title2)
                    Capsule()
                        .stroke(Color("AccentColor"), lineWidth: 2)
                        .frame(width: 175, height: 65)
                }
            })   
        }
    }
}

//VStack {
//    Text("Login as a returning user").padding()
//
//    TextField("email", text: $email)
//        .autocapitalization(.none)
//        .disableAutocorrection(true)
//        .padding()
//
//    SecureField("password", text: $password)
//        .autocapitalization(.none)
//        .disableAutocorrection(true)
//        .padding()
//
//    Button(action: {
//
//        guard !email.isEmpty, !password.isEmpty else { return }
//
//        viewModel.signUp(email: email, password: password)
//
//    }, label: {
//        ZStack {
//            Circle().stroke(.black, lineWidth: 4).frame(width: 50, height: 50, alignment: .center)
//            Image(systemName: "arrow.right")
//        }
//    })
//
//}

