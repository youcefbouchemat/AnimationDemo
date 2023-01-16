//
//  ContentView.swift
//  AnimationDemo
//
//  Created by apple on 15/1/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var visible: Bool = false;
    
    var body: some View {
        VStack{
            Toggle(isOn: $visible.animation(.linear(duration: 5))){
                Text("Toggle text Views")
            }
            .padding()
            
            if visible {
                Text("Hello brain")
                    .font(.headline)
            }
            
            if !visible {
                Text("Goodbye brain")
                    .font(.headline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
