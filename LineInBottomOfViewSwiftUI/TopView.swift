//
//  TopView.swift
//  LineInBottomOfViewSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct TopView: View {
   
    @Binding var homeActive: Bool
    @State private var mapActive = false
    var body: some View {
        VStack {
            HStack {
                VStack {
                Button(action: {
                    
                    self.homeActive = true
                    
                    if self.homeActive {
                        self.mapActive = false
                    }
                }) {
                    Text("Home")
                }.frame(width: 150)
                    LineView(lineColor: self.homeActive ? .green : .white, height: 1, lineWidth: 260)
                }
            Spacer()
                VStack {
            Button(action: {
                
                self.mapActive = true
                
                if self.mapActive {
                    self.homeActive = false
                }
            }) {
                Text("Map")
            }.frame(width: 150)
                   LineView(lineColor: self.mapActive ? .green : .white, height: 1, lineWidth: 260)
                }
            }
           
           
        }
        
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(homeActive: .constant(true))
    }
}
