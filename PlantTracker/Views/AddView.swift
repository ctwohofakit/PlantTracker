//
//  AddView.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import SwiftUI

struct AddView: View {
    @Binding var plant: Plant
    @Environment(\.dismiss) var dismiss
    

    @State var plantImage: String = ""
    @State var plantName: String = ""
    @State var botaName: String = ""
    @State var catergory: String = ""

    @State var sunlight: String = ""
    @State var waterTime: String = ""
    @State var fertilizeSchedue: String = ""
    
    @State var status: String = ""
    @State var journal: String = ""
 
    
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
