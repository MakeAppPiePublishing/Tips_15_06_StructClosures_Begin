//
//  ContentView.swift
//  StructClosures
//
//  Created by Steven Lipton on 5/18/21.
//

import SwiftUI

struct ContentView:View {
    let gradientCount:Int = 12
    let columns = Array(repeating:GridItem(spacing:15), count:3)
    
    var body: some View{
        VStack{
            Text("A Gradient Closure Demo").font(.headline)
            LazyVGrid(columns:columns, spacing:15){
                ForEach(0..<gradientCount){count in
                    ZStack {
                        ComputedGradientView(steps: count) 
                        Image(systemName:"\(count).circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    
                }
                .frame(height:100)
            }
                
            .padding()
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
