//
//  WhereportApp.swift
//  Whereport
//
//  Created by Ellen Doll on 7/6/22.
//

import SwiftUI
import Firebase

@main
struct WhereportApp: App {

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AppViewModel())
        }
    }
}
