//
//  ContentView.swift
//  AnimationDemo
//
//  Created by apple on 15/1/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isButtonVisible: Bool = true;
    
    var body: some View {
        VStack{
            Toggle(isOn: $isButtonVisible.animation(.linear(duration: 2))){
                Text("Show/Hide Button")
            }
            
            if isButtonVisible {
                Button(action: {
                }){
                    Text("Example Button")
                }
                    .font(.largeTitle)
                    .transition(.move(edge: .top))
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
