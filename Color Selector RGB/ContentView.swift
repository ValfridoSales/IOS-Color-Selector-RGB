//
//  ContentView.swift
//  Color Selector RGB
//
//  Created by valfrido sales on 2025-03-28.
//

import SwiftUI

struct ContentView: View {
    @State var red = 1.0
    @State var green = 0.0
    @State var blue = 0.0
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.title)
                .fontWeight(.light)
            Image(systemName: "paintpalette.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(Color(red: red, green: green, blue: blue))
            
            ColorSliderView(colorValue: $red, color: .red)
            ColorSliderView(colorValue: $green, color: .green)
            ColorSliderView(colorValue: $blue, color: .blue)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
