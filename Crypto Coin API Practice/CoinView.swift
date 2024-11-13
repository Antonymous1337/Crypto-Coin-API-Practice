//
//  CoinView.swift
//  Crypto Coin API Practice
//
//  Created by Antony Holshouser on 11/13/24.
//

import SwiftUI

struct CoinView: View {
    let coin: Coin?
    
    var body: some View {
        VStack {
            Text(coin?.name ?? "Nil")
                .font(.title)
            Text(String(coin?.currentPrice ?? 0))
        }
    }
}

#Preview {
    CoinView(coin: Coin(id: "btc", name: "Bitcoin", currentPrice: 3.3))
        .environment(ViewModel())
}
