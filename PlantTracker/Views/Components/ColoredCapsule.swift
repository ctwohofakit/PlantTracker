//
//  ColoredCapsule.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/10/26.
//

import SwiftUI

struct ColoredCapsule: View{
    var text: String
    
    var body: some View{
    Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .padding(10)
            .background(Color("bottomColor"))
            .clipShape(Capsule())
        
        
    }
    
    
}
