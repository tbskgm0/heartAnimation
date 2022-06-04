//
//  ContentView.swift
//  heartShape
//
//  Created by tsubasa.kogoma on 2022/06/04.
//

import SwiftUI

struct ContentView: View {
    @State var to: CGFloat = 0
    
    var body: some View {
        HeartShape()
            .trim(from: 0, to: to)
            .stroke(Color.red,
                    style: StrokeStyle(
                        lineWidth: 5,
                        lineCap: .round))
            .frame(width: 150, height: 130)
            .onAppear() {
                withAnimation(
                    Animation
                        .easeInOut(duration: 0.8)
                        .repeatForever(autoreverses: false)) {
                            to = 1
                        }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
