//
//  ContentView.swift
//  Crypto Coin API Practice
//
//  Created by Antony Holshouser on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(ViewModel.self) var viewModel
    
    var body: some View {
        @Bindable var viewModel = viewModel
        
        
        ScrollView {
            ForEach(viewModel.coins) { coin in
                ZStack {
                    Rectangle()
                        .fill(.clear)
                        .contentShape(Rectangle())
                    VStack {
                        Text(coin.name ?? "")
                        Divider()
                    }
                }
                .onTapGesture {
                    viewModel.selectedCoin = coin
                }
            }
        }
        .onAppear() {
            viewModel.getCoinData()
        }
        .padding()
        .sheet(item: $viewModel.selectedCoin) { coin in
            CoinView(coin: coin)
            
        }
    }
}

#Preview {
    ContentView()
        .environment(ViewModel())
}
