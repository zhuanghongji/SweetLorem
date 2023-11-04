//
//  PreviewView.swift
//  Example
//
//  Created by zhuanghongji on 2023/11/4.
//

import SwiftUI
import SweetLorem

struct PreviewView: View {
    let text: String
    
    var body: some View {
        ScrollView {
            Text(text)
                .padding(.horizontal)
                .padding(.vertical, 32)
        }
        
    }
}

#Preview {
    // PreviewView(text: SweetLorem.common)
    // PreviewView(text: SweetLorem.paragraphsJoined(5))
    // PreviewView(text: SweetLorem.paragraphsJoined(5, separator: "\n\n---\n\n"))
    PreviewView(text: SweetLorem.listsJoined(5))
}
