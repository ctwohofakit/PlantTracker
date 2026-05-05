//
//  PlantDetailsView.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import SwiftUI

struct PlantDetailsView: View {
    @Binding var plant: Plant
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(plant.plantImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width:100, height:150)
                
                
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "book.pages.fill")
                        Text(plant.plantName)
                            .font(.title2)
                            .bold()
                    }.foregroundStyle(.brown)
                    HStack{
                        Image(systemName: "pencil.and.outline")
                        Text("by \(plant.botaName)")
                            .font(.subheadline)
                            .bold()
                    }.foregroundStyle(.secondary)
                }
                
            }//END: Hstack
            VStack{
                Text("Summary")
                    .font(.headline)
                    .padding(.bottom)
                
                Text(plant.catergory)
                Button("Edit Book"){
                    plant.plantName = "New Name Here"
                }
            }
            .padding()
            .background(.gray.opacity(0.3))
            .cornerRadius(10)
            Spacer()
            
        }.padding()
    }
}

#Preview {
    ContentView()
//    PlantDetailsView(plant: Plant(plantImage: "", plantName: "", botaName: "", catergory: "", sunlight: "", waterTime: "", temperature: 20.00, fertilizeSchedue: "", status: "", journal: ""))
}
