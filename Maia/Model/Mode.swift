//
//  Mode.swift
//  Maia
//
//  Created by Alexina Coullandreau on 09/04/2021.
//

import Foundation
import UIKit


struct ModesData: Decodable {
    let en: String
    
}



struct ModeData: Decodable {

    let id: Int
    let orderIndex: Int
    var fr: String?
    
    enum CodingKeys: CodingKey {
        case orderIndex
        case fr
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        orderIndex = try Int(container.decode(String.self, forKey: CodingKeys.orderIndex))!
        fr = try container.decode(String.self, forKey: CodingKeys.fr)
        id = Int(container.codingPath.first!.stringValue)!
    }
    
    
}

struct DecodedArray: Decodable {
    var array: [ModeData]
    private struct DynamicCodingKeys: CodingKey {
        var stringValue: String
        init?(stringValue: String) {
            self.stringValue = stringValue
        }

        var intValue: Int?
        init?(intValue: Int) {
            // We are not using this, thus just return nil
            return nil
        }
    }
    
    init(from decoder: Decoder) throws {

        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
        var tempArray = [ModeData]()

        for key in container.allKeys {

            let decodedObject = try container.decode(ModeData.self, forKey: DynamicCodingKeys(stringValue: key.stringValue)!)
            tempArray.append(decodedObject)
        }

        array = tempArray
    }
    
    
}


struct Mode {
    let id: Int
    let orderIndex: Int
    var propertyName: String?
    let isOriginMode: Bool
    let isEditable: Bool
    let colors: [UIColor]
    let speed: Int
    var thumbnailColors:[CGColor]?
    var thumbnailGradientType:String?
    var thumbnailGradientLocations:[Float]?
}



public extension UIColor {
    convenience init(absoluteRed red: Int, green: Int, blue: Int) {
        let normalizedRed = CGFloat(red) / 255.0
        let normalizedGreen = CGFloat(green) / 255.0
        let normalizedBlue = CGFloat(blue) / 255.0

        self.init(
            red: normalizedRed,
            green: normalizedGreen,
            blue: normalizedBlue,
            alpha: 1
        )
    }
}




/*
 
// for default modes, json parser

 Get from the json :
    id
    orderIndex
    propertyName
    colors
    thumbnailColors --> to convert to array of CGColors
    thumbnailGradientType
 
 Set
    speed as 0
    isOriginMode as True
    isEditable as False



// for custom modes loaded from the MC
 thumbnailGradientType --> linear diagonal
 
 */
