//
//  DataService.swift
//  Crypto Coin API Practice
//
//  Created by Antony Holshouser on 11/12/24.
//

import Foundation

struct DataService {
    
    func getData() async -> [Coin] {
        if let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd") {
            var request = URLRequest(url: url)
            request.addValue(Bundle.main.infoDictionary?["API_KEY"] as? String ?? "", forHTTPHeaderField: "x-cg-demo-api-key")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            do {
                let (data, _) = try await URLSession.shared.data(for: request)
                
                //print(response)
                let decoder = JSONDecoder()
                let coins = try decoder.decode([Coin].self, from: data)
                return coins
            } catch {
                print(error)
            }
        }
        
        return [Coin]()
    }
}
