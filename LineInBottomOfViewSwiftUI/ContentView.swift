//
//  ContentView.swift
//  LineInBottomOfViewSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var homeActive = true
    var body: some View {
        NavigationView {
            
            VStack {
                TopView(homeActive: self.$homeActive).padding(.top, 30)
                Spacer()
                if self.homeActive {
                    //present this view
                    Text("Home")
                } else {
                    Text("Map")
                }
                Spacer()
            }.navigationBarTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
