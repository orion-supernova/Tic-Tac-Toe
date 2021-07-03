//
//  DifficultyChoosingView.swift
//  Tic-Tac-Toe
//
//  Created by Murat Can KOÇ on 30.05.2021.
//

import SwiftUI

struct ChooseModeView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    
    
    var body: some View {
        
            
            VStack(spacing: 30) {
                Text("Choose your game mode ↓ ")
                    .font(.system(size: 25, weight: .semibold))
                    .padding(.top, -100)
                
                Button(action: {
                    viewRouter.currentPage = .easyMode
                    
                    
                }, label: {
                    Text("Easy")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                        .clipShape(Capsule())
                        .padding()
                })
                
                
                Button(action: {
                    viewRouter.currentPage = .mediumMode
                    
                }, label: {
                    Text("Medium")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                        .clipShape(Capsule())
                        .padding()
                })
                
                Button(action: {
                    viewRouter.currentPage = .hardMode
                    
                }, label: {
                    Text("Hard")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        .clipShape(Capsule())
                        .padding()
                })
                
                
                
            }

        
        
        
        
            
           
        
    }
}

struct DifficultyChoosingView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseModeView()
    }
}
