# Generator

The screenshots below show the use case of the **generator** in the `Example` project.

<div>
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/10636ee6-869d-481e-ac38-a9b7cc7cea3c" width="160" />
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/98eb9d94-b5f2-4176-bb98-60fc1a3571bc" width="160" />
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/68b6174f-701c-4b2c-b0a9-3226eca15f1d" width="160" />
<img src="https://github.com/zhuanghongji/SweetLorem/assets/11421799/26939cf3-ab11-4f3a-894e-f85d71138adc" width="160" />
</div>
<br/>

1️⃣ The ui code of `ContentView.swift` :

```swift
struct ContentView: View {
    @State private var action: GeneratorAction = .words

    @State private var start = true
    @State private var count = 10
    @State private var minWordsCount = 10
    @State private var maxWordsCount = 100
    @State private var minParagraphsCount = 3
    @State private var maxParagraphsCount = 6

    @State private var routes: [NavigationRoute] = []

    var wordsCountDisabled: Bool {
        action == .words
    }

    var paragraphsCountDisabled: Bool {
        action == .words || action == .paragraphs
    }

    var body: some View {
        NavigationStack(path: $routes) {
            VStack {
                Button {
                    logger(SweetLorem.words(Int.random(in: 10...30)))
                } label: {
                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                        Text("Hello, SweetLorem")
                            .foregroundColor(.primary)
                    }
                }
                
                HStack {
                    Button {
                        print(SweetLorem.title)
                    } label: {
                        Text("Title")
                    }
                    
                    Button {
                        print(SweetLorem.introduction)
                    } label: {
                        Text("Introduction")
                    }
                    
                    Button {
                        print(SweetLorem.common)
                    } label: {
                        Text("Common")
                    }
                }
                .padding(.vertical)
                
                Picker("Action", selection: $action) {
                    Text("Words").tag(GeneratorAction.words)
                    Text("Paragraphs").tag(GeneratorAction.paragraphs)
                    Text("Lists").tag(GeneratorAction.lists)
                }
                .pickerStyle(.segmented)
                .padding(.top)
                
                VStack {
                    NumberPicker("Count", value: $count)
                    NumberPicker("MinWordsCount", value: $minWordsCount)
                        .disabled(wordsCountDisabled)
                    NumberPicker("MaxWordsCount", value: $maxWordsCount)
                        .disabled(wordsCountDisabled)
                    NumberPicker("MinParagraphsCount", value: $minParagraphsCount)
                        .disabled(paragraphsCountDisabled)
                    NumberPicker("MaxParagraphsCount", value: $maxParagraphsCount)
                        .disabled(paragraphsCountDisabled)
                    Divider().padding(.vertical)
                    Toggle("Start", isOn: $start)
                }
                .padding()
                Divider()
                
                Button(action: previewText) {
                    Text("Generate and Preview")
                }
                .buttonStyle(.borderedProminent)
                .padding(.top)
                Button(action: descriptor) {
                    Text("Descriptor")
                }
                .padding(.top)
            }
            .padding()
            .navigationDestination(for: NavigationRoute.self) { route in
                switch route {
                case let .preview(text):
                    PreviewView(text: text)
                case .descriptor:
                    DescriptorView()
                }
            }
        }
    }

    // ...
}
```

2️⃣ Generate text :

```swift
// Words
let text = SweetLorem.words(count, start: start)
```

```swift
// Paragraphs
let paragraphs = SweetLorem.paragraphs(count,
                                       minParagraphs: minParagraphsCount,
                                       maxParagraphs: maxParagraphsCount,
                                       minWords: minWordsCount,
                                       maxWords: maxWordsCount,
                                       start: start)
let text = paragraphs.joined(separator: "\n\n")
```

```swift
// Lists
let lists = SweetLorem.lists(count,
                             minParagraphs: minParagraphsCount,
                             maxParagraphs: maxParagraphsCount,
                             minWords: minWordsCount,
                             maxWords: maxWordsCount,
                             start: start)
let text = lists.map { $0.joined(separator: "\n\n") }.joined(separator: "\n\n")
```


3️⃣ Preview text :


```swift
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
    PreviewView(text: SweetLorem.listsJoined(5))
}
```