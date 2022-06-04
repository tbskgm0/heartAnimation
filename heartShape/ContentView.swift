//
//  ContentView.swift
//  heartShape
//
//  Created by tsubasa.kogoma on 2022/06/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("black")
            .mask(
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
