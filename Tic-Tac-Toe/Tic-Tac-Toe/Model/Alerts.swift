//
//  Alerts.swift
//  Tic-Tac-Toe
//
//  Created by Murat Can KOÇ on 24.05.2021.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitleForReset: Text
    var buttonTitleForMainMenu: Text
}

struct AlertContext {
    static let humanWin = AlertItem(title: Text("You Win!"),
                                    message: Text("You are smart! I guess..."),
                                    buttonTitleForReset: Text("Restart"),
                                    buttonTitleForMainMenu: Text("Main Menu"))
    static let computerWin = AlertItem(title: Text("You Lost!"),
                                       message: Text("You are a shame..."),
                                       buttonTitleForReset: Text("Restart"),
                                       buttonTitleForMainMenu: Text("Main Menu"))
    static let draw = AlertItem(title: Text("Draw!"),
                                message: Text("Interesting..."),
                                buttonTitleForReset: Text("Restart"),
                                buttonTitleForMainMenu: Text("Main Menu"))
}

