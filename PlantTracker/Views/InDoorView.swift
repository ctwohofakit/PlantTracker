//
//  InDoorView.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/10/26.
//

import SwiftUI

struct InDoorView : View{
    @Binding var plants: [Plant]
    @State private var showFilter: Bool = false
    
    @State var selectedStatus: Status?
    @State var selectedCategory: Category?
    
    let gridLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    private var inDoorPlant: [Plant]{
        filterInDoorPlant(plant:plants, status: selectedStatus,  category: selectedCategory)
    }
    
    
    var body :some View{
        NavigationStack{
            ZStack{
                Color("listBackground").ignoresSafeArea()
//                RoundedRectangle(cornerRadius:20)
//                    .fill(Color("background").opacity(0.3))
//                    .frame(maxWidth: 400, maxHeight: 600)
//                .shadow(color: .black, radius: 10, x: 5, y: 8)
                
                VStack{
                    
                    ScrollView{
                        
                        LazyVGrid(columns: gridLayout){
                            ForEach(inDoorPlant){plant in
                                GridCard(plant: plant)
                                
                            }
                            
                            
                        }
                    }
                    //MARK: end of ScrollView
                    .frame(maxWidth: 400, maxHeight: 600)
//                    .cornerRadius(15)
                    .padding()
            
                    
                    
                }
  
                
            }
            
            .navigationTitle("In Door Plants")
//            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button("Filter"){
                        self.showFilter.toggle()
                        
                    }.sheet(isPresented: $showFilter){
                        
                        FilterPlantView(selectedStatus: $selectedStatus,selectedCategory: $selectedCategory)
                    }
            
            
            )
        }//MARK: end of NAV
        
        
        
    }
}



#Preview {
ContentView()
}
