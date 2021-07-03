//
//  Tic_Tac_ToeApp.swift
//  Tic-Tac-Toe
//
//  Created by Murat Can KOÇ on 23.05.2021.
//

import SwiftUI

@main
struct Tic_Tac_ToeApp: App {
    
    
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewRouter)
        }
    }
}
