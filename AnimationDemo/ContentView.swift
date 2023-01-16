//
//  ContentView.swift
//  AnimationDemo
//
//  Created by apple on 15/1/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0;
    @State private var isSpinning: Bool = true
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(Color.blue)
                .frame(width: 360,height: 360)
            
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -180)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false), value: rotation)
        }
            .onAppear() {
                self.isSpinning.toggle()
                rotation = isSpinning ? 0 : 360
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
