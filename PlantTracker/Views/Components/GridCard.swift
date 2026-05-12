//
//  GridCard.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/10/26.
//

import SwiftUI

struct GridCard: View{
    var plant: Plant
    
    
    var body: some View{
        ZStack{
            Image(plant.plantImage)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(1, contentMode: .fill)
                    .cornerRadius(20)
        VStack{
            Text(plant.plantName)
                .frame(maxWidth: .infinity)
                .font(.title).bold()
                .foregroundStyle(.white)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding()
                .background(
                    LinearGradient(
                        colors:[.clear, Color("background").opacity(0.8)],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
            Spacer()
            
//            Text(plant.botaName)
//                .frame(maxWidth: .infinity)
//                .font(.title)
//                .foregroundStyle(.white)
//                .lineLimit(2)
//                .multilineTextAlignment(.center)
//                .padding()
//                .background(
//                    LinearGradient(
//                        colors:[.clear, Color("background").opacity(0.8)],
//                        startPoint: .top,
//                        endPoint: .bottom
//                    )
//                )
            
         
            
            
        }.frame(width: .infinity)
                .cornerRadius(20)
//        .background(
//            Image(plant.plantImage)
//                .resizable()
//                .scaledToFit()
//        )
//        .aspectRatio(1, contentMode: .fit)
//        .cornerRadius(20)
        }
    }
    
    
    
}



#Preview {
    GridCard(
        plant: Plant(plantName: "Strawberry", botaName: "fun fruit to have", catergory: .fruit, plantImage:"strawberry", sunlight:"Full Sun", waterTime: "Weekly", fertilizeSchedue: "", dlevel: 2, status: .good, note: "this is", isIndoor: true)
        )
}

