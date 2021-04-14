//
//  Mode.swift
//  Maia
//
//  Created by Alexina Coullandreau on 09/04/2021.
//

import Foundation
import UIKit

struct Mode {
    let id: Int
    let orderIndex: Int
    var propertyName: String?
    let isOriginMode: Bool
    let isEditable: Bool
    let colors: [UIColor]
    let speed: Int
    var thumbnailColors:[UIColor]?
    var thumbnailGradientType:String?
}

