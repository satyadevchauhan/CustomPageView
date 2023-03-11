//
//  CustomPageView.swift
//  CustomPageView
//
//  Created by Satyadev Chauhan on 11/03/23.
//

import SwiftUI

struct CustomPageView: View {
    var colors: [Color] = [.red, .green, .blue, .orange, .yellow, .cyan]
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            ForEach(0..<colors.count, id: \.self) { i in
                colors[i]
                    .frame(width: 250, height: 180, alignment: .center)
                    .cornerRadius(10)
                
            }
        }
        .modifier(ScrollToItemModifier(items: colors.count, itemWidth: 250, itemSpacing: 30))
    }
}

struct CustomPageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageView()
    }
}
