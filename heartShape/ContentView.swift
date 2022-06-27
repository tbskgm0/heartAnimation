//
//  ContentView.swift
//  heartShape
//
//  Created by tsubasa.kogoma on 2022/06/04.
//

import SwiftUI

struct ContentView: View {
    @State var to: CGFloat = 0
    
    @State var position: Position = .zero
    @State var backFrom: CGFloat = 0.3
    @State var backTo: CGFloat = 1.0
    @State var foreFrom: CGFloat = 0.0
    @State var foreTo: CGFloat = 0.1
    
    enum Position {
        case zero
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
    }
    
    var body: some View {
        VStack {
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
            
            ZStack {
                HeartShape()
                    .trim(from: backFrom, to: backTo)
                    .stroke(Color.red,
                            style: StrokeStyle(
                                lineWidth: 5,
                                lineCap: .round))
                    .frame(width: 150, height: 130)
                
                HeartShape()
                    .trim(from: foreFrom, to: foreTo)
                    .stroke(Color.red,
                            style: StrokeStyle(
                                lineWidth: 5,
                                lineCap: .round))
                    .frame(width: 150, height: 130)
            }
            .onAppear() {
                Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                    setNewPosition()
                }
            }
        }
    }
    
    func setNewPosition() {
        switch position {
        case .zero:
            print("zero")
            position = .one
            backFrom = 0.2
            backTo = 1.0
            foreFrom = 0.3
            backTo = 1.0
        case .one:
            print("one")
            position = .two
            backFrom = 0.3
            backTo = 1.0
            foreFrom = 0.0
            foreTo = 0.1
        case .two:
            print("two")
            position = .three
            backFrom = 0.4
            backTo = 1.0
            foreFrom = 0
            foreTo = 0.2
        case .three:
            print("three")
            position = .four
            backFrom = 0.5
            backTo = 1.0
            foreFrom = 0
            foreTo = 0.3
        case .four:
            print("four")
            position = .five
            backFrom = 0.6
            backTo = 1.0
            foreFrom = 0
            foreTo = 0.4
        case .five:
            print("five")
            position = .six
            backFrom = 0.7
            backTo = 1.0
            foreFrom = 0
            foreTo = 0.5
        case .six:
            print("six")
            position = .seven
            backFrom = 0.8
            backTo = 1.0
            foreFrom = 0
            foreTo = 0.6
        case .seven:
            print("seven")
            position = .eight
            backFrom = 0.9
            backTo = 1.0
            foreFrom = 0
            foreTo = 0.7
        case .eight:
            print("eight")
            position = .nine
            backFrom = 1.0
            backTo = 1.0
            foreFrom = 0
            foreTo = 0.8
        case .nine:
            print("nine")
            position = .zero
            backFrom = 0.1
            backTo = 0.9
            foreFrom = 0.2
            foreTo = 0.9
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
