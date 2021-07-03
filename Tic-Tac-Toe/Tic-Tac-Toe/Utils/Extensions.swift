//
//  Extensions.swift
//  Tic-Tac-Toe
//
//  Created by Murat Can KOÇ on 30.05.2021.
//

import SwiftUI
import AVKit


struct AvPlayerControllerRepresented: UIViewControllerRepresentable {
    
    
    var player : AVPlayer
    
    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = AVPlayerViewController()
                controller.player = player
                controller.showsPlaybackControls = false
                return controller
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: AvPlayerControllerRepresented
        
        init(_ parent: AvPlayerControllerRepresented) {
            self.parent = parent
            
            
        }
        
        
    }
    
}
