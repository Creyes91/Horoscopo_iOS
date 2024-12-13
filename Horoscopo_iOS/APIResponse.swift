//
//  APIResponse.swift
//  Horoscopo_iOS
//
//  Created by Tardes on 13/12/24.
//

import Foundation


struct APIResponse: Codable {
    let data: HoroscopeData
    let status: Int
    let success: Bool
}

struct HoroscopeData: Codable {
    let date: String
    let horoscope_data: String
}
