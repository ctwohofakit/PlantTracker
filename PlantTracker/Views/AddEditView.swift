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
    @State var botaName: String = ""
    @State var plantImage: String = ""
    @State var catergory: String = "Fruit"
    @State var sunlight: String = "Full Sun"
    @State var waterTime: String = "Weekly"
    @State var fertilizeSchedue: String = "Spring"
    @State var dlevel: Int = 1
    @State var status: String = "Healthy"
    @State var note: String = ""
//    @State var isWater:Bool = false
    
    //call for binding from outside, using _ to get binding form init
    init(plant: Binding<Plant>){
        self._plant = plant
        self._plantName = .init(initialValue: plant.wrappedValue.plantName)
        self._botaName = .init(initialValue: plant.wrappedValue.botaName)
        self._catergory = .init(initialValue: plant.wrappedValue.catergory)
        self._plantImage = .init(initialValue: plant.wrappedValue.plantImage)
        self._sunlight = .init(initialValue: plant.wrappedValue.sunlight)
        self._waterTime = .init(initialValue: plant.wrappedValue.waterTime)
        self._fertilizeSchedue = .init(initialValue: plant.wrappedValue.fertilizeSchedue)
        self._dlevel = .init(initialValue: plant.wrappedValue.dlevel)
        self._status = .init(initialValue: plant.wrappedValue.status)
        self._note = .init(initialValue: plant.wrappedValue.note)
//        self._isWater:Bool = false
    }
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    var body: some View {
        NavigationStack{
            Form{
                    
                Section(header:Text("Plant Details")){
                    HStack{
                        TextField("Plant Name", text: $plantName)
                        TextField("|Botanical Name", text: $botaName)
                    }
                    
                        Picker("Catergory" , selection: $catergory){
                            Label("Fruit", systemImage: "carrot.fill").tag("Fruit")
                            Label("Plant", systemImage: "leaf.fill").tag("Plant")
                            Label("Flower", systemImage: "camera.macro").tag("Flower")
                        }
                    //categories selection
                        Picker("Image" , selection: $plantImage){
                            Text("Basil").tag("basil")
                            Text("Strawberry").tag("strawberry")
                            Text("Thyme").tag("thyme")
                            Text("blueberry").tag("blueberry")
                        }
                    }//end: first section
                
                Section(header:Text("Plant Care Info")){
                    Picker("Sunlight" , selection: $sunlight){
                        Label("Full Shade", systemImage: "cloud.fill").tag("Full Shade")
                        Label("Part Shade", systemImage: "cloud.sun.fill").tag("Part Shade")
                        Label("Bright Indirect", systemImage: "sun.horizon").tag("Bright Indirect")
                        Label("Part Sun", systemImage: "sun.min").tag("Part Sun")
                        Label("Full Sun", systemImage: "sun.max").tag("Full Sun")
                    }.pickerStyle(.menu)
                    Picker("Water Schedule" , selection: $waterTime){
                        Text("Daily").tag("Daily")
                        Text("Weekly").tag("Weekly")
                        Text("Monthly").tag("Monthly")
                        Text("Rarely").tag("Rarely")
                    }
                    //                        fertilizeSchedue
                    Picker("Fertilize Schedue" , selection: $fertilizeSchedue){
                        Text("Spring").tag("Spring")
                        Text("Summer").tag("Summer")
                        Text("Fall").tag("Fall")
                        Text("Winter").tag("Winter")
                    }
                    
                    Picker("Plant Health Status" , selection: $status){
                        Text("Healthy").tag("Healthy")
                        Text("Need care").tag("Need care")
                    }
                    
                }//end :second section
                
                Picker("Difficulty level: ", selection: $dlevel){
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }//end: third section
                
                Section(header: Text("Personal Note:")){
                    
                        TextEditor(text: $note)
                            .frame(maxWidth: 360, maxHeight: 200)
                            .fixedSize(horizontal: false, vertical: true)
                        
                    
                }//end final section
                
                
                
                
                
                
                
                
                
            }//end form
            .navigationTitle(plant.plantName.isEmpty ? "Add Plant" : "Edit Plant") // ternary
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .confirmationAction){
                    Button("Save"){
                        plant.plantName = plantName
                        plant.botaName = botaName
                        plant.catergory = catergory
                        plant.plantImage = plantImage
                        plant.sunlight = sunlight
                        plant.waterTime = waterTime
                        plant.fertilizeSchedue = fertilizeSchedue
                        plant.dlevel = dlevel
                        plant.status = status
                        plant.note = note
                        
  
                        
                        dismiss()
                    }.disabled(plantName.isEmpty)
                }//MARK: end:tool item
                
                
                ToolbarItem(placement: .cancellationAction){
                    Button("Cancel"){
                        dismiss()
                    }
                }//MARK: end:tool item
                
                
                    
                }//MARK: end:tool bar
            
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
