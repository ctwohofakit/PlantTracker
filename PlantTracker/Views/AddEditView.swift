//
//  AddView.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import SwiftUI

struct AddEditView: View {
    @Binding var plant: Plant
    @Environment(\.dismiss) var dismiss
    

    
    @State var plantName: String = ""
    @State var plantImage: String = ""
    @State var botaName: String = ""
    @State var catergory: String = "Fruit"
    @State var sunlight: String = ""
    @State var waterTime: String = ""
    @State var fertilizeSchedue: String = ""
    @State var status: String = "Healthy"
    @State var journal: String = ""
//    @State var isWater:Bool = false
    
    //call for binding from outside, using _ to get binding form init
    init(plant: Binding<Plant>){
        self._plant = plant
        self._plantName = .init(initialValue: plant.wrappedValue.plantName)
        self._plantImage = .init(initialValue: plant.wrappedValue.plantImage)
        self._botaName = .init(initialValue: plant.wrappedValue.botaName)
        self._catergory = .init(initialValue: plant.wrappedValue.catergory)
        self._sunlight = .init(initialValue: plant.wrappedValue.sunlight)
        self._waterTime = .init(initialValue: plant.wrappedValue.waterTime)
        self._fertilizeSchedue = .init(initialValue: plant.wrappedValue.fertilizeSchedue)
        self._status = .init(initialValue: plant.wrappedValue.status)
        self._journal = .init(initialValue: plant.wrappedValue.journal)
//        self._isWater:Bool = false
    }
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header:Text("Plant Details")){
                    TextField("Plant name", text: $plantName)
                    TextField("Botatonic name", text: $botaName)
                    Picker("Catergory" , selection: $catergory){
                        Text("Fruit").tag("Fruit")
                        Text("Plant").tag("Plant")
                        Text("Flower").tag("Flower")
                    }
//                    TextField("Plant name", text: $catergory)
                }
            }//end form
        }.navigationTitle("Add Plant")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .confirmationAction){
                    Button("Save"){
                        dismiss()
                    }
                    
                }
            }
    }
}

#Preview {
   
    ContentView()
//    @state var mockplant = Plant(plantImage:"strawberry", plantName: "Strawberry", botaName: "fun fruit to have", catergory: "Fruit", sunlight:"Full Sun", waterTime: "Weekly", temperature: 30, fertilizeSchedue: "", status: "healthy", journal: "this is")
//    NavigationStack{
//        AddView(plant: $mockplant)
//    }
    
}
