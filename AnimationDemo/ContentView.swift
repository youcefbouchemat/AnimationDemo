//
//  ContentView.swift
//  AnimationDemo
//
//  Created by apple on 15/1/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0.0;
    @State private var scale: CGFloat = 1;
    
    var body: some View {
        Button(action: {
            self.rotation = self.rotation == 360 ? 0 : self.rotation + 60;
            self.scale = self.scale < 2.8 ? self.scale + 0.3 : 1;
        }){
            Text("Click me")
                .foregroundColor(.black)
                .font(.largeTitle)
                .rotationEffect(.degrees(rotation))
                .scaleEffect(scale)
                .animation(.spring(response: 1, dampingFraction: 0.2,blendDuration: 0), value: rotation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
