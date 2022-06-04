//
//  HeartShape.swift
//  heartShape
//
//  Created by tsubasa.kogoma on 2022/06/04.
//

import SwiftUI

struct HeartShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 60, y: 100))
            path.addQuadCurve(to: CGPoint(x: 20, y: 40),
                              control: CGPoint(x: 20, y: 60))
            path.addQuadCurve(to: CGPoint(x: 60, y: 20),
                              control: CGPoint(x: 20, y: 0))
            path.addQuadCurve(to: CGPoint(x: 100, y: 40),
                              control: CGPoint(x: 100, y: 0))
            path.addQuadCurve(to: CGPoint(x: 60, y: 100),
                              control: CGPoint(x: 100, y: 60))
            path.closeSubpath()
        }
    }
}
