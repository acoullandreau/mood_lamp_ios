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
    let fr: String
    let orderIndex: Int
    let colors:[ModesColors]
    let thumbnailColors:[ModesColors]
    let thumbnailGradientType:String
    let thumbnailGradientLocations:[Float]
}

struct ModesColors: Decodable {
    let red: Int
    let green:Int
    let blue:Int
    
    private enum CodingKeys: String, CodingKey {
        case red="r"
        case green="g"
        case blue="b"
    }
    
    //var color = UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    
}


/*
"1":{
    "en":"HourOfDay",
    "fr":"C'est l'heure !",
    "orderIndex":1,
    "colors":[],
    "thumbnailColors":[
        { "r": 42, "g": 36, "b": 71 },
        { "r": 213, "g": 68, "b": 69 },
        { "r": 237, "g": 136, "b": 95 },
        { "r": 251, "g": 173, "b": 37 },
        { "r": 241, "g": 172, "b": 145 },
        { "r": 234, "g": 203, "b": 195 },
        { "r": 52, "g": 90, "b": 122 },
        { "r": 10, "g": 10, "b": 22 }
    ],
    "thumbnailGradientType":"horizontal",
    "thumbnailGradientLocations":[0.08, 0.16, 0.29, 0.4, 0.62, 0.7, 0.74, 0.82]
},
*/



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
