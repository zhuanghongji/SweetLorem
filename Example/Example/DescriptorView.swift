//
//  DescriptorView.swift
//  Example
//
//  Created by zhuanghongji on 2023/11/3.
//

import SweetLorem
import SwiftUI

struct DescriptorView: View {
    @Binding var isRTL: Bool
    @State private var language: String = "Default"

    var descriptor: SweetLoremDescriptor {
        switch language {
        case "English":
            return .english
        case "Chinese":
            return .chinese
        case "Japanese":
            return .japanese
        case "Arabic":
            return .arabic
        default:
            return .default
        }
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(descriptor.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text(descriptor.description)
                    .foregroundStyle(Color(red: 0.5, green: 0.5, blue: 0.5))

                // 1
                Text(descriptor.head1)
                    .fontWeight(.bold)
                Text(descriptor.content1)
                // 2
                Text(descriptor.head2)
                    .fontWeight(.bold)
                Text(descriptor.content2)
                // 3
                Text(descriptor.head3)
                    .fontWeight(.bold)
                Text(descriptor.content3)
                // 4
                Text(descriptor.head4)
                    .fontWeight(.bold)
                Text(descriptor.content4)
            }
            .lineSpacing(4)
            .padding(.horizontal)
            .padding(.vertical, 32)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Picker("Language", selection: $language) {
                    Text("Default").tag("Default")
                    Text("English").tag("English")
                    Text("Chinese").tag("Chinese")
                    Text("Japanese").tag("Japanese")
                    Text("Arabic").tag("Arabic")
                }
                .onChange(of: language) { _, newValue in
                    isRTL = newValue == "Arabic"
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DescriptorView(isRTL: .constant(false))
    }
}
