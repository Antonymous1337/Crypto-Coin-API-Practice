//
//  Crypto_Coin_API_PracticeApp.swift
//  Crypto Coin API Practice
//
//  Created by Antony Holshouser on 11/12/24.
//

import SwiftUI

@main
struct Crypto_Coin_API_PracticeApp: App {
    
    @State var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }
    }
}
