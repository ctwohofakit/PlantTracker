//
//  FilterPlantView.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/11/26.
//

import SwiftUI

struct FilterPlantView: View{
    @Environment(\.dismiss) var dismiss
    
    //binding
    @Binding var selectedStatus: Status?
    @Binding var selectedCategory: Category?
    
    //temp storage
   
    @State var tempStatus: Status?
    @State var tempCategory: Category?
    var body: some View{
        NavigationStack{
            Form{
                
                
                Section("Select a status"){
                    Picker("Status", selection: $tempStatus){
                        Text("No status selected").tag(nil as Status?)
                        ForEach(Status.allCases, id:\.self){status in
                            Text(status.rawValue).tag(status)
                            
                        }
                    }
                }
                Section("Select a category"){
                    Picker("Select a category", selection: $tempCategory){
                        Text("No category selected").tag(nil as Category?)
                        ForEach(Category.allCases, id:\.self){category in
                            Text(category.rawValue).tag(category)
                            
                        }
                    }.pickerStyle(.inline)
                     .labelsHidden()
                    
                }
                
                
            }
            .toolbar{
                ToolbarItem(placement: .confirmationAction){
                    Button("Apply"){
                      
                        selectedStatus = tempStatus
                        selectedCategory = tempCategory
                        dismiss()
                    }
                }
                //end: form
                
            }
        }//end: nav
        
        
        
        
    }
}
