//
//  DemoView.swift
//  Example
//
//  Created by zhuanghongji on 2023/11/4.
//

import SweetLorem
import SwiftUI

struct DemoView: View {
    let text1: String
    let text2: String
    let text3: String
    let text4: String
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(text1)
                    .fontWeight(.bold)
                Text(text2)
                Text(text3)
                Text(text4)
            }
            .padding()
        }
    }
}

#Preview {
    DemoView(text1: SweetLorem.title,
             text2: SweetLorem.introduction,
             text3: SweetLorem.common,
             text4: SweetLorem.words(100, start: false))
}
