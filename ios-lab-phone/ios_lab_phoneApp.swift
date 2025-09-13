//
//  ios_lab_phoneApp.swift
//  ios-lab-phone
//
//  Created by iOS Lab on 09/08/25.
//

import SwiftUI

@main
struct ios_lab_phoneApp: App {
    @StateObject var controller = StartController()
    var body: some Scene {
        WindowGroup {
            StartScreen()
                .environmentObject(controller)
        }
    }
}
