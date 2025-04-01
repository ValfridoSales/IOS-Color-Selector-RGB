//
//  ColorSliderView.swift
//  Color Selector RGB
//
//  Created by valfrido sales on 2025-04-01.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var colorValue : Double
    var color: Color
    var body: some View {
        
        HStack {
            Circle()
                .frame(width: 25)
                .foregroundStyle(color)
            Slider(value: $colorValue)
        }
    }
}

#Preview {
    ColorSliderView(colorValue: .constant(0.5), color: .blue)
}
