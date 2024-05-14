//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Кирилл Курочкин on 14.05.2024.
//

import SwiftUI

enum Currrentlight {
    case off
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var currrentLight: Currrentlight = .off
    @State private var redLightState = 0.3
    @State private var yellowLightStat = 0.3
    @State private var greenLightStat = 0.3
    @State private var buttonTitle = "START"
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red, opacity: redLightState)
                ColorCircleView(color: .yellow,opacity: yellowLightStat)
                ColorCircleView(color: .green,opacity: greenLightStat)
                Spacer()
                StartButtonView(title: buttonTitle, action: {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                   
                } )

            }
            .padding(.bottom, 50)
           
            
        }
    }
    private func nextColor() {
        let lightOn = 1.0
        let lightOff = 0.3
        
        switch currrentLight {
        case .red:
            currrentLight = .yellow
            redLightState = lightOn
            yellowLightStat = lightOff
            greenLightStat = lightOff
        case .yellow:
            currrentLight = .green
            redLightState = lightOff
            yellowLightStat = lightOn
            greenLightStat = lightOff
        case .green:
            currrentLight = .off
            redLightState = lightOff
            yellowLightStat = lightOff
            greenLightStat = lightOn
        case .off:
            currrentLight = .red
            redLightState = lightOff
            yellowLightStat = lightOff
            greenLightStat = lightOff
            buttonTitle = "START"
            
        }
    }
}



#Preview {
    ContentView()
}
