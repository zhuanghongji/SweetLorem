//
//  DescriptorView.swift
//  Example
//
//  Created by zhuanghongji on 2023/11/3.
//

import SweetLorem
import SwiftUI

struct DescriptorView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(SweetLorem.default.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text(SweetLorem.default.description)
                    .foregroundStyle(Color(red: 0.5, green: 0.5, blue: 0.5))
                
                // 1
                Text(SweetLorem.default.head1)
                    .fontWeight(.bold)
                Text(SweetLorem.default.content1)
                // 2
                Text(SweetLorem.default.head2)
                    .fontWeight(.bold)
                Text(SweetLorem.default.content2)
                // 3
                Text(SweetLorem.default.head3)
                    .fontWeight(.bold)
                Text(SweetLorem.default.content3)
                // 4
                Text(SweetLorem.default.head4)
                    .fontWeight(.bold)
                Text(SweetLoremDescriptor.default.content4)
            }
            .padding(.vertical, 32)
            .padding(.horizontal)
        }
    }
}

#Preview {
    DescriptorView()
}
