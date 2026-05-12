//
//  Untitled.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/10/26.
//

import SwiftUI

struct PlantListView: View{
    @Binding var plants : [Plant]
    
    @State private var showAddPlant:Bool = false
    @State private var newPlant = Plant(plantName: "", botaName: "", catergory: .others, plantImage: "defaultPlant", sunlight: "", waterTime: "",  fertilizeSchedue: "", dlevel: 1, status: .healthy,   note: "", isIndoor: false)
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Image("backGroundlily")
                    .resizable()
                    .ignoresSafeArea()
                
                ZStack{
              
                    
                    VStack{
                        //MARK: Top display---
                        
                        Spacer().frame(height:60)
                        
                        
                        
                        //MARK: catergory & list card---
                        VStack{
                            /*
                             VStack{
                             HStack{
                             Text("Categories")
                             .font(.title)
                             
                             Spacer()
                             Text("See all")
                             
                             }.foregroundStyle(.dateLabel)
                             //end of Vstack
                             .padding(.vertical).bold()
                             ScrollView(.horizontal, showsIndicators: false){
                             HStack(spacing: 20){
                             VStack{
                             Image(systemName: "camera.macro")
                             .resizable()
                             .scaledToFit()
                             .frame(width:25, height:25)
                             .padding()
                             .background(Color("background"))
                             .clipShape(.circle)
                             .foregroundStyle(.white)
                             Text("Flower")
                             .font(.headline).bold()
                             
                             }.frame(width:100, height: 100)
                             .background(.white)
                             .cornerRadius(15)
                             
                             
                             
                             
                             
                             
                             VStack{
                             Image(systemName: "carrot.fill")
                             .resizable()
                             .scaledToFit()
                             .frame(width:25, height:25)
                             .padding()
                             .background(Color("background"))
                             .clipShape(.circle)
                             .foregroundStyle(.white)
                             Text("Fruit")
                             .font(.headline).bold()
                             
                             }.frame(width:100, height: 100)
                             .background(.white)
                             .cornerRadius(15)
                             VStack{
                             Image(systemName: "apple.meditate")
                             .resizable()
                             .scaledToFit()
                             .frame(width:25, height:25)
                             .padding()
                             .background(Color("background"))
                             .clipShape(.circle)
                             .foregroundStyle(.white)
                             Text("Plant")
                             .font(.headline).bold()
                             
                             }.frame(width:100, height: 100)
                             .background(.white)
                             .cornerRadius(15)
                             
                             
                             //                                    CategoryCard(icon:)
                             }
                             
                             }
                             }.shadow(color: .gray.opacity(0.3), radius: 3, x: 5, y: 2)
                             .padding(.horizontal,30)
                             */
                            //End: Catergories
                            //                        VStack(alignment: .leading){
                            //                            }
                            
                            VStack(alignment: .leading, spacing: 0){
                                Text("My Plants")
                                    .font(.title).bold()
                                    .foregroundStyle(.dateLabel)
                                    .padding(.leading, 30)
                                    .padding(.top, 20)
                                List($plants){ plant in
                                    NavigationLink(destination: PlantDetailsView(plant: plant)){
                                        PlantListItem(plant: plant.wrappedValue)
                                        
                                    } .listRowBackground(Color.clear)
                                        .listRowSeparator(.hidden)
                                        .listStyle(.plain)
                                }
                                
                            }
                            .listRowBackground(Color("listBackground"))
                            
                            
                            
                        }//MARK: END_mid to bottom Vstack
                        .scrollContentBackground(.hidden)
                        .background(
                            UnevenRoundedRectangle(topLeadingRadius: 50, topTrailingRadius: 50).fill(Color("listBackground"))
                                .frame(maxWidth:.infinity)
                        ).ignoresSafeArea()
                        
                        
                        
                        
                    }
                    //end:main Vstack
                }
            } //END: Z
            .navigationTitle("Plant Care")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("Add"){
                showAddPlant.toggle()
            })
            .sheet(isPresented: $showAddPlant){
                if(!newPlant.plantName.isEmpty){
                    plants.append(newPlant)
                }
                newPlant = Plant(plantName: "", botaName: "", catergory: .others, plantImage: "", sunlight: "", waterTime: "", fertilizeSchedue: "", dlevel: 1, status: .healthy, note: "", isIndoor: false )
            }content:{
                AddEditView(plant: $newPlant)
            }
        }//end:Navigation
        
        
        
    }
    
}


#Preview {
    ContentView()
}
