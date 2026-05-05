//
//  PlantListItem.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import SwiftUI

struct PlantListItem: View {
    
    var plant: Plant
    
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
                        Text(plant.botaName)
                            .font(.subheadline)
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
                        .frame(width:150, height: 120)
                    
                }
                HStack{
                    Text(plant.status)
                        .bold()
                        .padding(.horizontal, 10)
                        .foregroundStyle(.white)
                        .background(Color("healthy").opacity(0.7))
                    Spacer()
                    
                   
            
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
            }.padding(.horizontal)
            
            
            
        }
        .frame(width:320, height: 180)
//        .background(Color("labelFont"))
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 5, y: 2)
        
    }
}

#Preview {
    PlantListItem(
        plant: Plant(plantImage:"strawberry", plantName: "Strawberry", botaName: "fun fruit to have", catergory: "Fruit", sunlight:"Full Sun", waterTime: "Weekly", fertilizeSchedue: "", status: "healthy", journal: "this is")
        )
}
