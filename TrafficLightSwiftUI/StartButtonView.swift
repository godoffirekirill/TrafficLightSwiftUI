//
//  StartButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Кирилл Курочкин on 14.05.2024.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
        }
        .frame(width: 200,height: 60)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 4))
    }
}

#Preview {
    StartButtonView(title: "START", action: {})
}
