//
//  PlantDetailsView.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/4/26.
//

import SwiftUI

struct PlantDetailsView: View {
    @Binding var plant: Plant
    
    @State private var showEditPlant: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            NavigationStack{
       
            ZStack(alignment: .bottom){
                Color("listBackground")
                    .ignoresSafeArea()
      
            VStack(alignment: .leading, spacing:8){
                Spacer().frame(maxHeight: 150)
                
              
                VStack(alignment: .leading){
                    Spacer().frame(maxHeight: 20)
                    
                    //content start
                    VStack{
                        Spacer().frame(maxHeight: 70)
                        VStack(alignment: .leading){
                            HStack{
                                Text(plant.plantName)
                                    .font(.title).bold()
                                Spacer()
                                HStack{
                                    Image(systemName: "bookmark.fill")
                                        .foregroundStyle(.blue.opacity(0.8))
                                    Text(plant.catergory)
                                }
                                
                            }
                            Text(plant.botaName)
                                .font(.subheadline)
                            
                            //schedule info
                            HStack{
                                VStack{
                                
                                    HStack{
                                    Image(systemName: "sun.max.fill")
                                        .foregroundStyle(Color("dateLabelColor"))
                                    VStack(alignment: .leading){
                                        Text("Sun light needed:")
                                            .font(.subheadline)
                                            .bold()
                                        Text(plant.sunlight)
                                            .font(.footnote)
                                        }
                                    }
                                    Spacer()
                                    HStack{
                                        Image(systemName: "drop.halffull")
                                            .foregroundStyle(Color("dateLabelColor"))
                                        VStack(alignment: .leading){
                                            Text("Water Schedule:")
                                                .font(.subheadline)
                                                .bold()
                                            Text(plant.waterTime)
                                                .font(.footnote)
                                        }
                                    }
                                
                              
                                
                            }.padding(5)
                            Spacer()
                            
                                VStack{
                                    
                                    HStack{
                                        Image(systemName: "thermometer.medium")
                                            .foregroundStyle(Color("dateLabelColor"))
                                        VStack(alignment: .leading){
                                            Text("Temperature need:")
                                                .font(.subheadline)
                                                .bold()
                                            Text(plant.sunlight)
                                                .font(.footnote)
                                        }
                                    }
                                    Spacer()
                                    HStack{
                                        Image(systemName: "apple.meditate")
                                            .foregroundStyle(Color("dateLabelColor"))
                                        VStack(alignment: .leading){
                                            Text("Fertilize Schedule:")
                                                .font(.subheadline)
                                                .bold()
                                            Text(plant.waterTime)
                                                .font(.footnote)
                                        }
                                    }
                                   
                                }.padding(5)
                            }.frame(maxHeight:100)
                            
                        }
                        VStack(alignment: .leading){
                            Text("Summary")
                                .font(.headline)
                                .padding(.bottom)
                            Text(plant.catergory)
                            Button("Edit Book"){
                                plant.plantName = "New Name Here"
                            }
                        }.padding()
                            .background(.gray.opacity(0.3))
                            .cornerRadius(10)
                            Spacer()
                        
                        
                    }
                    .frame(width: 360, height: 580)
                    .border(.blue)
                                
                            
                    }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            UnevenRoundedRectangle(topLeadingRadius: 50, topTrailingRadius: 50).fill(.white)
                        )
                
         

                }//End: mid to end VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .bottom)
            
                
               
                    VStack{
                        Image(plant.plantImage)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth:300, maxHeight:200)
                            .cornerRadius(15)
                            .overlay(alignment: .topTrailing){
                                
                                Text(plant.status)
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.horizontal, 20)
                                    .foregroundStyle(.white)
                                    .background(Color("healthy").opacity(0.7))
                            }.shadow(color: .gray.opacity(0.5), radius: 5, x: 5, y: 5)
                            .offset(y: -510)
                    }//End: image floating vstack
                
                
                
                
                
                
            }//End: Zstack
            .scrollContentBackground(.hidden)
                
               
                }
            
//            .background(Color("listBackground"))
                    .navigationTitle("Edit Plant")
                    .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(trailing: Button("Edit"){
                            showEditPlant.toggle()
                        })
                        .sheet(isPresented: $showEditPlant){
                            
                        }content:{
                            AddView(plant: $plant)
                    }
            

                       //                .navigationBarItems(trailing: Button("Edit")){
                       //                    showEditPlant.toggle()
                       //                }).sheet(isPresented: $showEditPlant){
                       //
                       //                }content:{
                       //                    EditPlantView(plant: $plant)
                       //                }
               }//End: nav

           }

       
}

#Preview {
    ContentView()
//    PlantDetailsView(plant: Plant(plantImage: "", plantName: "", botaName: "", catergory: "", sunlight: "", waterTime: "", temperature: 20.00, fertilizeSchedue: "", status: "", journal: ""))
}
