//
//  Plant.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import Foundation

struct Plant: Identifiable{
//    enum lightSelect: String, CaseIterable, Identifiable {
//        case full = "Full Shade"
//        case partShade = "Part Shade"
//        case partSun = "Part Sun"
//        case medSun = "Medium Sun"
//        case fullSun = "Full Sun"
//        var id: String {self.rawValue}
//    }
//    
//    enum waterSelect: String, CaseIterable, Identifiable {
//        case daily, weekly, monthly, rarely
//        var id: Self {self}
//    }
    
    
    
    let id = UUID()
    var plantImage: String
    var plantName: String
    var botaName: String
    var catergory: String
//    var dateJoin: Date
    
//    var lightNeed: lightSelect
//    var waterNeed: waterSelect
    var sunlight: String
    var waterTime: String
    var fertilizeSchedue: String
    
//    var lastWaterDate: Date
//    var lastFertilizeDate: Date
    var status: String
    var journal: String
}
