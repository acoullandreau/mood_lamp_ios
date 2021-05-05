//
//  ModesConfig.swift
//  Maia
//
//  Created by Alexina Coullandreau on 14/04/2021.
//

import Foundation
import UIKit

// get the modes

func getModes() {
    
    if let path = Bundle.main.path(forResource: "modesConfig", ofType: "json") {
        do {
            
            let jsonData = try NSData(contentsOfFile: path, options: NSData.ReadingOptions.mappedIfSafe)
            parseJSON(modesData: jsonData as Data)
        } catch {}
                
    }
}

func parseJSON(modesData: Data) {
    let decoder = JSONDecoder()
    do {
        let decodedData = try decoder.decode(ModesData.self, from: modesData)
        print(decodedData)
    } catch {
        
    }
}




var defaultModes:  [Mode] = [
    Mode(id: 0, orderIndex: 0, propertyName:"Éteindre", isOriginMode: true, isEditable: false, colors: [], speed: 0),
    Mode(id: 1, orderIndex: 1, propertyName:"C'est l'heure !", isOriginMode: true, isEditable: false, colors: [], speed: 0, thumbnailColors:[UIColor(red: 0.16, green: 0.14, blue: 0.28, alpha: 1.00).cgColor, UIColor(red: 0.84, green: 0.27, blue: 0.27, alpha: 1.00).cgColor, UIColor(red: 0.93, green: 0.53, blue: 0.37, alpha: 1.00).cgColor, UIColor(red: 0.98, green: 0.68, blue: 0.15, alpha: 1.00).cgColor, UIColor(red: 0.95, green: 0.67, blue: 0.57, alpha: 1.00).cgColor, UIColor(red: 0.92, green: 0.80, blue: 0.76, alpha: 1.00).cgColor, UIColor(red: 0.20, green: 0.35, blue: 0.48, alpha: 1.00).cgColor, UIColor(red: 0.04, green: 0.04, blue: 0.09, alpha: 1.00).cgColor], thumbnailGradientType:"linear"),
]

var customModes:  [Mode] = [
    Mode(id: 4, orderIndex: 4, propertyName:"MyCustomMode", isOriginMode: false, isEditable: true, colors: [UIColor(red: 0.78, green: 0.1, blue: 1.00, alpha: 1.00), UIColor(red: 1.00, green: 0.71, blue: 0.42, alpha: 1.00)], speed: 0)
]


/*
Mode(id: 2, orderIndex: 2, propertyName:"Lecture", isOriginMode: true, isEditable: false, colors: [UIColor(red: 0.89, green: 0.91, blue: 1.00, alpha: 1.00), UIColor(red: 1.00, green: 0.71, blue: 0.42, alpha: 1.00)], speed: 0),
Mode(id: 5, orderIndex: 5, propertyName:"Bonheur simple", isOriginMode: true, isEditable: false, colors: [UIColor(red: 0.92, green: 0.40, blue: 0.38, alpha: 1.00), UIColor(red: 0.90, green: 0.52, blue: 0.67, alpha: 1.00), UIColor(red: 0.93, green: 0.67, blue: 0.82, alpha: 1.00), UIColor(red: 0.92, green: 0.69, blue: 0.45, alpha: 1.00), UIColor(red: 0.97, green: 0.83, blue: 0.49, alpha: 1.00), UIColor(red: 0.66, green: 0.78, blue: 0.60, alpha: 1.00), UIColor(red: 0.51, green: 0.78, blue: 0.51, alpha: 1.00), UIColor(red: 0.13, green: 0.56, blue: 0.58, alpha: 1.00), UIColor(red: 0.13, green: 0.24, blue: 0.52, alpha: 1.00)], speed: 0),
Mode(id: 10, orderIndex: 10, propertyName:"", isOriginMode: true, isEditable: false, colors: [], speed: 0),
Mode(id: 23, orderIndex: 23, propertyName:"", isOriginMode: true, isEditable: false, colors: [], speed: 0),
Mode(id: 24, orderIndex: 24, propertyName:"", isOriginMode: true, isEditable: false, colors: [], speed: 0)

*/
