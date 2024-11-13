//
//  Coin.swift
//  Crypto Coin API Practice
//
//  Created by Antony Holshouser on 11/12/24.
//

import Foundation

struct Coin: Decodable, Identifiable {
    let id: String?
    var name: String?
    var currentPrice: Double?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case currentPrice = "current_price"
    }
}
