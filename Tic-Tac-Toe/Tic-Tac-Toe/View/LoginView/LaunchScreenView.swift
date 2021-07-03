//
//  LaunchScreenView.swift
//  Tic-Tac-Toe
//
//  Created by Murat Can KOÇ on 30.05.2021.
//

import SwiftUI
import AVKit
import ImageIO
import MobileCoreServices

struct LaunchScreenView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "intro", ofType: "mov")!))
    
    
    
    
    
    var body: some View {
        
        ZStack {
            AvPlayerControllerRepresented(player: player)
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
                    player.play()
                })
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                withAnimation(.spring(response: 1, dampingFraction: 1, blendDuration: 1)) {
                    viewRouter.currentPage = .modeScreen
                }
            }
        })
    }
    
    
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
