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
    var statusColor: Color{
        switch plant.status.rawValue{
        case "Need Care" : return .orange
        case "Good" : return .green
        case "Poor" : return .red
        case "Healthy" : return .mint
        default : return .mint
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            NavigationStack{
       
            ZStack(alignment: .bottom){
                Color("listBackground")
                    .ignoresSafeArea()
      
            VStack(alignment: .leading, spacing:8){
                Spacer().frame(maxHeight: 160)
                
              
                VStack(alignment: .leading){
                    Spacer().frame(maxHeight: 20)
                    
                    //content start
                    VStack{
                        Spacer().frame(maxHeight: 50)
                        VStack(alignment: .leading){
                            
                            //MARK: top name section
                            HStack{
                                Text(plant.plantName)
                                    .font(.title2).bold()
                                Spacer()
                                
                              
                                    //MARK: is indoor? icon for animation
                                    InDoorToggle(isInDoor: $plant.isIndoor)
                                    .offset(x:15)
                                
                                
                            }
                            
                            //MARK: Catergoory Capsule
                            HStack{
                                Text(plant.botaName)
                                    .font(.subheadline)
                                ColoredCapsule(text: plant.catergory.rawValue)

                                
                                
                            }
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
                                            .foregroundStyle(.brown)
                                            .font(.footnote).bold()
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
                            
                                VStack(alignment: .leading){
                                    
                                    HStack{
                                        Image(systemName: "star.bubble.fill")
                                            .foregroundStyle(Color("dateLabelColor"))
                                        VStack(alignment: .leading){
                                            Text("Diffulty levels:")
                                                .font(.subheadline)
                                                .bold()
                                            
                                            HStack{
                                                ForEach(1...plant.dlevel, id: \.self){_ in
                                                    Image(systemName: "leaf.fill")
                                                    //
                                                }
                                                
                                            }//end of diaply level
                                            .font(.footnote)
                                            .foregroundStyle(Color("background"))
                                            
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
                                            Text(plant.fertilizeSchedue)
                                                .font(.footnote)
                                        }
                                    }
                                   
                                }.padding(5)
                            }//END: schedule info
                            .frame(maxHeight:100)
                            
                        }
                        
//                        Spacer().frame(maxHeight:18)
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius:20)
                                .fill(Color("background").opacity(0.3))
                            .frame(maxWidth: 350, maxHeight: 260)
                            .shadow(color: .black, radius: 10, x: 5, y: 8)
                            
                            VStack(alignment: .leading){
                                HStack{
                                    Image(systemName: "book")
                                    Text("Personal Notes")
                                        .font(.headline)
                                }.padding(.bottom, 5)
                                Text(plant.note)
                                Spacer()
                                
                            }//end of Note
                            
                            .frame(maxWidth:320, maxHeight:220)
                            .padding(.top, 10).padding()
                            .background(.white).opacity(0.8)
                            .cornerRadius(10)
                            
                        }
                        
                        Spacer()
                       
                        
                    }
                    .frame(maxWidth: 360, maxHeight: 580)
                 
                            
                    }
//                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            UnevenRoundedRectangle(topLeadingRadius: 90, topTrailingRadius: 90).fill(.white)
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
                                
                                Text(plant.status.rawValue)
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.horizontal, 20)
                                    .foregroundStyle(.white)
                                    .background(Color(statusColor).opacity(0.7))
                            }.shadow(color: .gray.opacity(0.5), radius: 5, x: 5, y: 5)
                            .offset(y: -460)
                    }//End: image floating vstack
                
                
                
                
                
                
            }//End: Zstack
            .scrollContentBackground(.hidden)
                
               
                }
            
//            .background(Color("listBackground"))
                    .navigationTitle("Plant Details")
                    .navigationBarTitleDisplayMode(.inline)
                        .navigationBarItems(trailing: Button("Edit"){
              
                            showEditPlant.toggle()
                        })
                        .sheet(isPresented: $showEditPlant){
                            
                        }content:{
                            AddEditView(plant: $plant)
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
