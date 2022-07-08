//
//  AppViewModel.swift
//  Whereport
//
//  Created by Ellen Doll on 7/7/22.
//

import Foundation
import FirebaseAuth

class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard authResult != nil, error == nil else { return }
        }
        
        DispatchQueue.main.async {
            // Success
            if self.isSignedIn {
                self.signedIn = true
            }
        }

    }
    
    func signUp(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) {
            [weak self] authResult, error in
            guard authResult != nil, error == nil else { return }
        }
        
        DispatchQueue.main.async {
            // Success
            self.signedIn = true
        }
    }
    
    func signOut() {
        try? auth.signOut()
        
        self.signedIn = false
    }
    
}
