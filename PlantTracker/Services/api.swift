//
//  api.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import Foundation

func getPlants()->[Plant]{
    
    return[
        Plant(plantImage:"basil",
              plantName: "Strawberry",
              botaName: "star",
              catergory: "Plant",
              sunlight:"Full Sun",
              waterTime: "Weekly",
              fertilizeSchedue: "twice a yar",
              status: "Healthy",
              journal:"hi, today is the first time to plant"),
        
        Plant(plantImage:"strawberry",
              plantName: "Basil",
              botaName: "grass",
              catergory: "Fruit",
              sunlight:"Full Sun",
              waterTime: "Weekly",
              fertilizeSchedue: "twice a yar",
              status: "Need Care",
              journal: "Basil loves water, but not too frequent."),
        
        Plant(plantImage:"thyme",
              plantName: "Thyme",
              botaName: "medium",
              catergory: "Flower",
              sunlight:"Full Sun",
              waterTime: "Weekly",
              fertilizeSchedue: "once a yar",
              status: "Healthy",
              journal:"Thyme is a woody herb that is good for cooking steak"),
        
    ]
}
