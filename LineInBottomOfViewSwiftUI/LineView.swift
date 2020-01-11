//
//  LineView.swift
//  LineInBottomOfViewSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct LineView: View {
    var lineColor: Color
    var height: CGFloat
    var lineWidth: CGFloat
    var body: some View {
        HStack {
            //This only show for active button. Width of button
            Rectangle().frame(width: self.lineWidth, height: self.height).foregroundColor(self.lineColor).padding(.top, 0)
        }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView(lineColor: Color.green, height: 1, lineWidth: 260)
    }
}
