//
//  ContentView.swift
//  Tic-Tac-Toe
//
//  Created by Murat Can KOÇ on 30.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        
        switch viewRouter.currentPage {
        case .launchScreen :
            LaunchScreenView()
        case .modeScreen:
            ChooseModeView()
        case .easyMode:
            GameViewEasy()
        case .mediumMode:
            GameViewMedium()
        case .hardMode:
            GameViewHard()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
