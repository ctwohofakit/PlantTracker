//
//  difficultyLevelField.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/7/26.
//

import SwiftUI

struct difficultyLevelField: View {
    
    @Binding var dlevel: Int
    
    var body: some View {
        HStack{
            ForEach(1...5, id:\.self){index in
                Button(action:{
                    self.dlevel = index
                }){
                Image(systemName: index <= dlevel ? "star.fill" : "star")
                    .foregroundColor(.green)
//                    .onTapGesture{
//                        dlevel = index
            }.buttonStyle(.plain)
            }
        }
    }
}



