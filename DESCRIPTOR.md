# Descriptor

The screenshots below show the use case of the **descriptor** in the `Example` project.

<div>
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/752d81c6-8bea-4f56-be29-6bdfd2d518fc" width="160" />
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/2820a98c-c4d3-43ba-a91e-e9420e83906f" width="160" />
</div>
<br/>

Note: From left to right: English, Simplified Chinese.

The total code of `DescriptorView.swift` :

```swift
struct DescriptorView: View {

    @State private var language: String = "Default"

    var descriptor: SweetLoremDescriptor {
        switch language {
        case "en":
            return .en
        case "zh-hans":
            return .zhHans
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
                    Text("en").tag("en")
                    Text("zh-hans").tag("zh-hans")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        DescriptorView()
    }
}
```