//
//  Places.swift
//  PkdTourism
//
//  Created by 61086256 on 07/01/25.
//
import Foundation

struct Places:Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let distance: Double
}
