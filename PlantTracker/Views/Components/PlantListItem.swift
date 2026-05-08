//
//  PlantListItem.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import SwiftUI

struct PlantListItem: View {
    
    var plant: Plant
    
    var statusColor: Color{
        switch plant.status{
        case "Need Care" : return .orange
        default : return .pink
        }
    }
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .center){
                        Image(plant.plantImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width:90, height:120)
                            .cornerRadius(10)
                        
                    }.padding(10)
                    //                .padding(10)
                    
                    VStack(alignment: .leading){
                       
                            Text(plant.plantName)
                                .font(.title2).bold()
                                .frame(maxWidth: 140)
                            Text(plant.botaName)
                                .font(.subheadline)
                                .frame(maxWidth: 140)
                        
                        HStack{
                            Image(systemName: "bookmark.fill")
                                .frame(width:18, height: 18)
                                .foregroundStyle(.blue.opacity(0.6))
                            Text(plant.catergory)
                                .font(.footnote).bold()
                        }
                        HStack{
                            Image(systemName: "sun.max.fill")
                                .frame(width:18, height: 18)
                            //                                .foregroundStyle(.b)
                            Text(plant.sunlight)
                                .font(.footnote).bold()
                        }
                        HStack{
                            Image(systemName: "drop.halffull")
                                .frame(width:18, height: 18)
                            //                                .foregroundStyle(.brown)
                            Text(plant.waterTime)
                                .font(.footnote).bold()
                        }
                    }.padding()
                        .frame(maxWidth:150, maxHeight: 120)
                    
                }
                HStack{
                    Text(plant.status)
                        .bold()
                        .foregroundStyle(.white)
                        .frame(maxWidth: 110)
                        .background(Color(statusColor).opacity(0.7))
                        
                  
                    
                   
            
//                    NavigationLink(destination:PlantDetailsView(plant: plant.wrappedValue)){
//                        Button("Log Care"){
//                        }
//                            .padding(.horizontal, 18)
//                            .padding(.vertical, 5)
//                        .foregroundStyle(.white).bold()
//                        
//                        .background(Color("btnColor"))
//                        .cornerRadius(10)

                }
            }.padding()
            
            
            
        }
        .frame(maxWidth:320, maxHeight: 180)
//        .background(Color("labelFont"))
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 5, y: 2)
        
    }
}

#Preview {
    PlantListItem(
        plant: Plant(plantName: "Strawberry", botaName: "fun fruit to have", catergory: "Fruit", plantImage:"strawberry", sunlight:"Full Sun", waterTime: "Weekly", fertilizeSchedue: "", dlevel: 2, status: "Need Care", note: "this is")
        )
}
