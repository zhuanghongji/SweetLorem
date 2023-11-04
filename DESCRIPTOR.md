# Descriptor

The screenshots below show the use case of the **descriptor** in the `Example` project.

<div>
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/752d81c6-8bea-4f56-be29-6bdfd2d518fc" width="160" />
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/e984c9f2-8bce-495d-b925-71c56ab4bdde" width="160" />
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/bed2ab2a-2ef3-4806-a503-a024a4684d87" width="160" />
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/a77315a2-5c93-478c-8e11-4beb8502de8d" width="160" />
</div>
<br/>

Note: From left to right: English, Chinese, Japanese and Arabic.

The total code of `DescriptorView.swift` :

```swift
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
```