//
//  api.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import Foundation

func getPlants()->[Plant]{
    
    return[
        Plant(
              plantName: "Strawberry",
              botaName: "Fragaria x ananassa",
              catergory: .fruit,
              plantImage: "strawberry",
              sunlight:"Full Sun",
              waterTime: "Weekly",
              fertilizeSchedue: "Spring",
              dlevel: 2,
              status: .healthy,
              note: "  Middle to late August generally is the best time to plant strawberries in all locations. Where winters are mild, short-day cultivars can be planted in November using green plants--new plants that you dig in October", isIndoor: true),
        
        Plant(
              plantName: "Basil",
              botaName: "grass",
              catergory: .herb,
              plantImage:"basil",
              sunlight:"Full Sun",
              waterTime: "Daily",
              fertilizeSchedue: "Summer",
              dlevel: 3,
              status: .needCare,
              note: "Basil loves water, but not too frequent. they like their feet wet, but body dry", isIndoor: true),
        
        Plant(
              plantName: "Thyme",
              botaName: "medium",
              catergory: .herb,
              plantImage:"thyme",
              sunlight:"Full Sun",
              waterTime: "Monthly",
              fertilizeSchedue: "Fall",
              dlevel: 4,
              status: .good,
              note:"Thyme is a woody herb that is good for cooking steak, the best soil is using sand mix", isIndoor: false),
        
    ]
}
