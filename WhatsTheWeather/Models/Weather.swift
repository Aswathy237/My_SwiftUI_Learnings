//
//  Weather.swift
//  WhatsTheWeather
//
//  Created by 61086256 on 15/01/25.
//
import Foundation

struct Weather : Decodable {
    let temp : Double
}

struct WeatherResponse : Decodable {
    let main : Weather
}
