//
//  ModesConfig.swift
//  Maia
//
//  Created by Alexina Coullandreau on 14/04/2021.
//

import Foundation
import UIKit

var defaultModes:  [Mode] = [
    Mode(id: 0, orderIndex: 0, propertyName:"Éteindre", isOriginMode: true, isEditable: false, colors: [], speed: 0),
    Mode(id: 1, orderIndex: 1, propertyName:"C'est l'heure !", isOriginMode: true, isEditable: false, colors: [], speed: 0, thumbnailColors:[UIColor(red: 0.16, green: 0.14, blue: 0.28, alpha: 1.00), UIColor(red: 0.84, green: 0.27, blue: 0.27, alpha: 1.00), UIColor(red: 0.93, green: 0.53, blue: 0.37, alpha: 1.00), UIColor(red: 0.98, green: 0.68, blue: 0.15, alpha: 1.00), UIColor(red: 0.95, green: 0.67, blue: 0.57, alpha: 1.00), UIColor(red: 0.92, green: 0.80, blue: 0.76, alpha: 1.00), UIColor(red: 0.20, green: 0.35, blue: 0.48, alpha: 1.00), UIColor(red: 0.04, green: 0.04, blue: 0.09, alpha: 1.00)], thumbnailGradientType:"linear"),
    Mode(id: 2, orderIndex: 2, propertyName:"Lecture", isOriginMode: true, isEditable: false, colors: [UIColor(red: 0.89, green: 0.91, blue: 1.00, alpha: 1.00), UIColor(red: 1.00, green: 0.71, blue: 0.42, alpha: 1.00)], speed: 0),
    Mode(id: 5, orderIndex: 5, propertyName:"Bonheur simple", isOriginMode: true, isEditable: false, colors: [UIColor(red: 0.92, green: 0.40, blue: 0.38, alpha: 1.00), UIColor(red: 0.90, green: 0.52, blue: 0.67, alpha: 1.00), UIColor(red: 0.93, green: 0.67, blue: 0.82, alpha: 1.00), UIColor(red: 0.92, green: 0.69, blue: 0.45, alpha: 1.00), UIColor(red: 0.97, green: 0.83, blue: 0.49, alpha: 1.00), UIColor(red: 0.66, green: 0.78, blue: 0.60, alpha: 1.00), UIColor(red: 0.51, green: 0.78, blue: 0.51, alpha: 1.00), UIColor(red: 0.13, green: 0.56, blue: 0.58, alpha: 1.00), UIColor(red: 0.13, green: 0.24, blue: 0.52, alpha: 1.00)], speed: 0),
    Mode(id: 10, orderIndex: 10, propertyName:"", isOriginMode: true, isEditable: false, colors: [], speed: 0),
    Mode(id: 23, orderIndex: 23, propertyName:"", isOriginMode: true, isEditable: false, colors: [], speed: 0),
    Mode(id: 24, orderIndex: 24, propertyName:"", isOriginMode: true, isEditable: false, colors: [], speed: 0)
]

var customModes:  [Mode] = [
    Mode(id: 4, orderIndex: 4, propertyName:"MyCustomMode", isOriginMode: false, isEditable: true, colors: [UIColor(red: 0.78, green: 0.1, blue: 1.00, alpha: 1.00), UIColor(red: 1.00, green: 0.71, blue: 0.42, alpha: 1.00)], speed: 0)
]


/*
             //hour of day effect
                 linear-gradient(
                     270deg,
                     rgba(42, 36, 71,1) 8%,
                     rgba(213, 68, 69,1) 16%,
                     rgba(237, 136, 95,1) 29%,
                     rgba(251, 173, 37, 1) 40%,
                     rgba(241, 172, 145,1) 62%,
                     rgba(234, 203, 195,1) 70%,
                     rgba(52, 90, 122,1) 74%,
                     rgba(10, 10, 22,1) 82%
                 )
             `
         } else if (id === 8){
             //fish bowl effect
             gradient =`
                 radial-gradient(circle, rgba(255,147,41,1) 2%, rgba(135,117,113,1) 20%, rgba(31,67,102,1) 100%)
             `
         } else if (id === 10){
             // fire effect
             gradient =`
                 linear-gradient(0deg, rgba(57,57,57,1) 2%, rgba(227,61,16,1) 17%, rgba(251,199,80,1) 89%, rgba(254,250,221,1) 100%)
             `
         } else if (id === 14){
             // beach effect
             gradient =`
                 linear-gradient(0deg, rgba(198,169,144,1) 39%, rgba(71,183,203,1) 62%)
             `
         } else if (id === 19){
             // Christmas effect
             gradient =`
                 linear-gradient(315deg, rgba(194,122,126,1) 10%, rgba(178,85,44,1) 20%, rgba(67,108,58,1) 30%, rgba(67,108,58,1) 70%, rgba(12,11,82,1) 80%, rgba(251,194,41,1) 90%)
             `
         } else if (id === 21){
             // rainbow effect
             gradient =`
                 linear-gradient(270deg, rgba(115,230,221,1) 15%, rgba(115,141,230,1) 40%, rgba(230,121,115,1) 65%, rgba(230,220,115,1) 85%)
             `
         } else if (id === 23){
             // summer holidays effect
             gradient =`
                 linear-gradient(180deg, rgba(246,174,44,1) 15%, rgba(23,83,150,1) 36%, rgba(222,185,144,1) 65%, rgba(164,188,39,1) 90%)
             `
         } else if (id === 24) {
             // party effect
             gradient =`
                 linear-gradient(217deg, rgba(255,0,0,.8), rgba(255,0,0,0) 70.71%),
                 linear-gradient(127deg, rgba(0,255,0,.8), rgba(0,255,0,0) 70.71%),
                 linear-gradient(336deg, rgba(0,0,255,.8), rgba(0,0,255,0) 70.71%)
             `
         } else if (id === 25) {
             // discussion effect
             gradient = `
                 linear-gradient(
                     217deg,
                     rgba(222,168,248,1) 0%,
                     rgba(168,222,258,1) 21.9%,
                     rgba(189,250,205,1) 35.6%,
                     rgba(243,250,189,1) 53.9%,
                     rgba(250,227,189,1) 66.8%,
                     rgba(248,172,171,1) 95%,
                     rgba(254,170,212,1) 99.9%
                 )
             `
         }

                    {'id':12, 'orderIndex':12, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        {"r": 255, "g": 0, "b": 0 },
                        { "r": 255, "g": 0, "b": 0 },
                        { "r": 255, "g": 255, "b": 255 },
                        { "r": 0, "g": 0, "b": 255 },
                        { "r": 0, "g": 0, "b": 255 },
                        { "r": 255, "g": 255, "b": 255 }],
                    'speed':0},
                    {'id':6, 'orderIndex':6, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        { "r": 61, "g": 123, "b": 150 },
                        { "r": 191, "g": 192, "b": 178 },
                        { "r": 212, "g": 212, "b": 204 },
                        { "r": 104, "g": 160, "b": 170 },
                        { "r": 237, "g": 241, "b": 226 },
                        { "r": 213, "g": 222, "b": 238 },
                        { "r": 31, "g": 57, "b": 77 }],
                    'speed':0},
                    {'id':7, 'orderIndex':7, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        { "r": 97, "g": 64, "b": 78 },
                        { "r": 195, "g": 95, "b": 95 },
                        { "r": 226, "g": 145, "b": 50 },
                        { "r": 191, "g": 154, "b": 115 },
                        { "r": 224, "g": 196, "b": 137 },
                        { "r": 167, "g": 167, "b": 98 },
                        { "r": 131, "g": 117, "b": 25 },
                        { "r": 197, "g": 104, "b": 23 },
                        { "r": 59, "g": 30, "b": 16 }],
                    'speed':0},
                    {'id':11, 'orderIndex':11, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        { "r": 48, "g": 67, "b": 107 },
                        { "r": 93, "g": 86, "b": 127 },
                        { "r": 138, "g": 105, "b": 148 },
                        { "r": 165, "g": 169, "b": 214 },
                        { "r": 232, "g": 221, "b": 229 },
                        { "r": 213, "g": 222, "b": 238 },
                        { "r": 210, "g": 180, "b": 191 },
                        { "r": 211, "g": 188, "b": 217 }],
                    'speed':0},
                    {'id':13, 'orderIndex':13, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        { "r": 251, "g": 173, "b": 37 },
                        { "r": 251, "g": 191, "b": 41 },
                        { "r": 238, "g": 85, "b": 25 },
                        { "r": 200, "g": 32, "b": 15 },
                        { "r": 132, "g": 37, "b": 57 },
                        { "r": 106, "g": 36, "b": 72 },
                        { "r": 107, "g": 99, "b": 123 },
                        { "r": 86, "g": 101, "b": 142 },
                        { "r": 47, "g": 59, "b": 92 }],
                    'speed':0},
                    {'id':15, 'orderIndex':15, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        { "r": 162, "g": 152, "b": 181 },
                        { "r": 162, "g": 114, "b": 141 },
                        { "r": 95, "g": 88, "b": 132 },
                        { "r": 151, "g": 131, "b": 183 },
                        { "r": 107, "g": 87, "b": 117 },
                        { "r": 214, "g": 149, "b": 125 },
                        { "r": 213, "g": 222, "b": 238 }],
                    'speed':0},
                    {'id':17, 'orderIndex':17, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        { "r": 121, "g": 66, "b": 98 },
                        { "r": 238, "g": 130, "b": 127 },
                        { "r": 252, "g": 200, "b": 193 },
                        { "r": 251, "g": 150, "b": 76 }],
                    'speed':0},
                    {'id':18, 'orderIndex':18, 'isOriginMode':true, 'isEditable':false, 'colors':[
                        { "r": 44, "g": 112, "b": 116 },
                        { "r": 61, "g": 124, "b": 119 },
                        { "r": 76, "g": 133, "b": 121 },
                        { "r": 98, "g": 151, "b": 125 },
                        { "r": 147, "g": 172, "b": 131 },
                        { "r": 176, "g": 183, "b": 131 }],
                    'speed':0}

        "modesSettings":{

            "3":{
                "en":"TemperatureDynamic",
                "fr":"Ambiance température",
                "orderIndex":3,
                "colors":[
                    { "r": 253, "g": 184, "b": 19 },
                    { "r": 253, "g": 228, "b": 132 },
                    { "r": 178, "g": 202, "b": 237 },
                    { "r": 117, "g": 174, "b": 220 }
                ]
            },
            "4":{
                "en":"HumidityDynamic",
                "fr":"Ambiance humidité",
                "orderIndex":4,
                "colors":[
                    { "r": 250, "g": 211, "b": 128 },
                    { "r": 246, "g": 215, "b": 176 },
                    { "r": 155, "g": 198, "b": 146 },
                    { "r": 46, "g": 113, "b": 8 }
                ]
            },
            "6":{
                "en":"CalmingWave",
                "fr":"Vague de calme",
                "orderIndex":6,
                "colors":[
                    { "r": 61, "g": 123, "b": 150 },
                    { "r": 191, "g": 192, "b": 178 },
                    { "r": 212, "g": 212, "b": 204 },
                    { "r": 104, "g": 160, "b": 170 },
                    { "r": 237, "g": 241, "b": 226 },
                    { "r": 213, "g": 222, "b": 238 },
                    { "r": 31, "g": 57, "b": 77 }
                ]
            },
            "7":{
                "en":"Autumn",
                "fr":"Automne",
                "orderIndex":7,
                "colors":[
                    { "r": 97, "g": 64, "b": 78 },
                    { "r": 195, "g": 95, "b": 95 },
                    { "r": 226, "g": 145, "b": 50 },
                    { "r": 191, "g": 154, "b": 115 },
                    { "r": 224, "g": 196, "b": 137 },
                    { "r": 167, "g": 167, "b": 98 },
                    { "r": 131, "g": 117, "b": 25 },
                    { "r": 197, "g": 104, "b": 23 },
                    { "r": 59, "g": 30, "b": 16 }
                ]
            },
            "8":{
                "en":"FishBowl",
                "fr":"Poisson dans l'eau",
                "orderIndex":8,
                "colors":[]
            },
            "9":{
                "en":"SuperNova",
                "fr":"Supernova",
                "orderIndex":9,
                "colors":[
                    { "r": 33, "g": 16, "b": 86 },
                    { "r": 221, "g": 34, "b": 104 },
                    { "r": 250, "g": 202, "b": 43 }
                ]
            },
            "10":{
                "en":"Fire",
                "fr":"Au coin du feu",
                "orderIndex":10,
                "colors":[]
            },
            "11":{
                "en":"Lavender",
                "fr":"Senteur de lavande",
                "orderIndex":11,
                "colors":[
                    { "r": 48, "g": 67, "b": 107 },
                    { "r": 93, "g": 86, "b": 127 },
                    { "r": 138, "g": 105, "b": 148 },
                    { "r": 165, "g": 169, "b": 214 },
                    { "r": 232, "g": 221, "b": 229 },
                    { "r": 213, "g": 222, "b": 238 },
                    { "r": 210, "g": 180, "b": 191 },
                    { "r": 211, "g": 188, "b": 217 }
                ]
            },
            "12":{
                "en":"NationalDay",
                "fr":"14 juillet",
                "orderIndex":12,
                "colors":[
                    { "r": 255, "g": 0, "b": 0 },
                    { "r": 255, "g": 0, "b": 0 },
                    { "r": 255, "g": 255, "b": 255 },
                    { "r": 0, "g": 0, "b": 255 },
                    { "r": 0, "g": 0, "b": 255 },
                    { "r": 255, "g": 255, "b": 255 }
                ]
            },
            "13":{
                "en":"Sunset",
                "fr":"Coucher de soleil",
                "orderIndex":13,
                "colors":[
                    { "r": 251, "g": 173, "b": 37 },
                    { "r": 251, "g": 191, "b": 41 },
                    { "r": 238, "g": 85, "b": 25 },
                    { "r": 200, "g": 32, "b": 15 },
                    { "r": 132, "g": 37, "b": 57 },
                    { "r": 106, "g": 36, "b": 72 },
                    { "r": 107, "g": 99, "b": 123 },
                    { "r": 86, "g": 101, "b": 142 },
                    { "r": 47, "g": 59, "b": 92 }
                ]
            },
            "14":{
                "en":"Beach",
                "fr":"À la plage",
                "orderIndex":14,
                "colors":[]
            },
            "15":{
                "en":"Relaxation",
                "fr":"Relaxation",
                "orderIndex":15,
                "colors":[
                    { "r": 162, "g": 152, "b": 181 },
                    { "r": 162, "g": 114, "b": 141 },
                    { "r": 95, "g": 88, "b": 132 },
                    { "r": 151, "g": 131, "b": 183 },
                    { "r": 107, "g": 87, "b": 117 },
                    { "r": 214, "g": 149, "b": 125 },
                    { "r": 213, "g": 222, "b": 238 }
                ]
            },
            "16":{
                "en":"SparklingPink",
                "fr":"Rosé pétillant",
                "orderIndex":16,
                "colors":[
                    { "r": 216, "g": 116, "b": 162 },
                    { "r": 186, "g": 105, "b": 128 },
                    { "r": 234, "g": 203, "b": 195 },
                    { "r": 223, "g": 197, "b": 200 },
                    { "r": 214, "g": 175, "b": 177 },
                    { "r": 234, "g": 111, "b": 124 },
                    { "r": 234, "g": 175, "b": 173 }
                ]
            },
            "17":{
                "en":"Romantic",
                "fr":"Romantique",
                "orderIndex":17,
                "colors":[
                    { "r": 121, "g": 66, "b": 98 },
                    { "r": 238, "g": 130, "b": 127 },
                    { "r": 252, "g": 200, "b": 193 },
                    { "r": 251, "g": 150, "b": 76 }
                ]
            },
            "18":{
                "en":"Forest",
                "fr":"Balade en forêt",
                "orderIndex":18,
                "colors":[
                    { "r": 44, "g": 112, "b": 116 },
                    { "r": 61, "g": 124, "b": 119 },
                    { "r": 76, "g": 133, "b": 121 },
                    { "r": 98, "g": 151, "b": 125 },
                    { "r": 147, "g": 172, "b": 131 },
                    { "r": 176, "g": 183, "b": 131 }
                ]
            },
            "19":{
                "en":"Christmas",
                "fr":"Joyeux Noël",
                "orderIndex":19,
                "colors":[]
            },
            "20":{
                "en":"NightSky",
                "fr":"Ciel étoilé",
                "orderIndex":20,
                "colors":[
                    { "r": 2, "g": 23, "b": 46 },
                    { "r": 3, "g": 29, "b": 55 },
                    { "r": 9, "g": 29, "b": 55 },
                    { "r": 16, "g": 41, "b": 73 },
                    { "r": 6, "g": 39, "b": 70 },
                    { "r": 8, "g": 49, "b": 85 },
                    { "r": 11, "g": 15, "b": 39 },
                    { "r": 10, "g": 12, "b": 52 },
                    { "r": 22, "g": 27, "b": 55 },
                    { "r": 36, "g": 43, "b": 75 }
                ]
            },
            "21":{
                "en":"Rainbow",
                "fr":"Arc-en-ciel",
                "orderIndex":21,
                "colors":[]
            },
            "22":{
                "en":"Bubbles",
                "fr":"Bulles",
                "orderIndex":22,
                "colors":[
                    { "r": 10, "g": 10, "b": 22 },
                    { "r": 52, "g": 90, "b": 122 }
                ]
            },
            "23":{
                "en":"SummerHolidays",
                "fr":"Vacances d'été",
                "orderIndex":23,
                "colors":[]
            },
            "24":{
                "en":"Party",
                "fr":"Fête",
                "orderIndex":24,
                "colors":[]
            },
            "25":{
                "en":"Conversation",
                "fr":"Conversation",
                "orderIndex":25,
                "colors":[]
            }
*/
