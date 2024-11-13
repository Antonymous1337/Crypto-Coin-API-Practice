//
//  ViewModel.swift
//  Crypto Coin API Practice
//
//  Created by Antony Holshouser on 11/13/24.
//

import Foundation
import SwiftUI

@Observable
class ViewModel {
    var coins = [Coin]()
    var dataService = DataService()
    var selectedCoin: Coin?
    
    func getCoinData() {
        Task {
            coins = await dataService.getData()
        }
    }
    
}
