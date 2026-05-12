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
   
    var plantName: String
    var botaName: String
    var catergory: Category = .others//change to enum
    var plantImage: String
//    var dateJoin: Date
    
//    var lightNeed: lightSelect
//    var waterNeed: waterSelect
    var sunlight: String
    var waterTime: String
    var fertilizeSchedue: String
    var dlevel: Int
//    var lastWaterDate: Date
//    var lastFertilizeDate: Date
    
      
    var status: Status = .healthy// need to change to enum
    var note: String
//    var isWater: Bool,
    
    
    var isIndoor: Bool
    //house.fill is indoor, house is outdoor
    
    
    
    
}
