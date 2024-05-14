//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Кирилл Курочкин on 14.05.2024.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

#Preview {
    ColorCircleView(color: .green, opacity: 0.3)
}
