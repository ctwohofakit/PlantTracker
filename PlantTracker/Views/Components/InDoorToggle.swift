//
//  InDoorToogle.swift
//  PlantTracker
//
//  Created by Kit Sitou on 5/9/26.
//

import SwiftUI



struct InDoorToggle: View{
    @Binding var isInDoor: Bool
    var size: Font = .largeTitle
    var useAnimation: Bool = true
    
    @State private var opacity: CGFloat = 0
    @State private var scale: CGFloat = 1
    @State private var offsetY: CGFloat = 0
    
    
    
    
    var body: some View{
        ZStack{
                        
            Image(systemName: "house.fill")
                .foregroundStyle(.brown)
                .font(size)
                .opacity(opacity)
                .scaleEffect(scale)
                .offset(y:offsetY)
            

            
            
            Toggle(isOn: $isInDoor){
                Image(systemName: isInDoor ? "house.fill" : "house")
                    .foregroundStyle(isInDoor ? .brown : .gray)
                    .imageScale(.large)
                    
                    
                   
                
                Image(systemName: "sparkles")
                    .foregroundStyle(.yellow)
                    .font(size)
                    .opacity(opacity)
                    .scaleEffect(scale)
                    .offset(y:offsetY)

                
                
            }.toggleStyle(.button)
             .buttonStyle(.plain)
             .animation(.spring, value: isInDoor)
            
            
             .onChange(of: isInDoor){ _, newValue in
                 guard useAnimation == true && newValue == true else{return}
                 withAnimation(.spring(response:0.5, dampingFraction: 0.3)){
                     scale = 1.2
                     opacity = 1
                 }
                 withAnimation(.easeInOut(duration: 0.5).delay(0.5)){
                     offsetY = -80
                     opacity = 0
                 }
                 
                 //reset
                 DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                     offsetY = 0
                     scale = 1
                     
                 }
                 
                 
                 
             }
        }
        
    }
    
    
}

#Preview {
    ContentView()
}
