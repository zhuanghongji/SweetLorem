//
//  ContentView.swift
//  Example
//
//  Created by zhuanghongji on 2023/11/2.
//

import SwiftUI
import SweetLorem

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, \(SweetLorem.name())")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
