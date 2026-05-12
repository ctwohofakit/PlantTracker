//
//  utils.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/10/26.
//
func filterInDoorPlant(plant:[Plant], status:Status?, category:Category?)->[Plant]{
    plant.filter { plant in
        plant.isIndoor &&
        (status == nil || plant.status == status)
        &&
        (category == nil || plant.catergory == category)
        
    }
}
