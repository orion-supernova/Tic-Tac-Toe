//
//  GameViewMedium.swift
//  Tic-Tac-Toe
//
//  Created by Murat Can KOÇ on 30.05.2021.
//

import SwiftUI

struct GameViewMedium: View {
    
    @StateObject private var viewModal = GameViewModelMedium()
    @EnvironmentObject var viewRouter: ViewRouter
    
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                Spacer()
                
                LazyVGrid(columns: viewModal.columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        ZStack {
                            Circle()
                                .foregroundColor(.blue)
                                .opacity(0.5)
                                .frame(width: geometry.size.width/3 - 15,
                                       height: geometry.size.width/3 - 15)
                            
                            Image(systemName: viewModal.moves[i]?.indicator ?? "")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }
                        .onTapGesture {
                            viewModal.playerProcessMove(for: i)
                        }
                        
                    }
                    
                }
                
                Spacer()
            }
            .disabled(viewModal.isGameboardDisabled)
            .padding()
            .alert(item: $viewModal.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      primaryButton: .cancel(alertItem.buttonTitleForReset,
                                              action: {
                                                viewModal.resetGame() }),
                      secondaryButton: .default(alertItem.buttonTitleForMainMenu, action: {
                        viewModal.resetGame()
                        viewRouter.currentPage = .modeScreen
                      }))
                
            }
        }
    }
}

struct GameViewMedium_Previews: PreviewProvider {
    static var previews: some View {
        GameViewMedium()
    }
}
