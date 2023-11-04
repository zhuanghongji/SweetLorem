//
//  ContentView.swift
//  Example
//
//  Created by zhuanghongji on 2023/11/2.
//

import SweetLorem
import SwiftUI

struct ContentView: View {
    @State private var action: GeneratorAction = .words
    
    @State private var start = true
    @State private var count = 10
    @State private var minWordsCount = 10
    @State private var maxWordsCount = 100
    @State private var minParagraphsCount = 3
    @State private var maxParagraphsCount = 6
    
    @State private var routes: [NavigationRoute] = []
    @State private var isRTL = false
    
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
                    logger(SweetLorem.words(Int.random(in: 10 ... 30)))
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
                    DescriptorView(isRTL: $isRTL)
                }
            }
        }
        .environment(\.layoutDirection, isRTL ? .rightToLeft : .leftToRight)
    }
     
    // MARK: Funcs
    
    func logger(_ message: String) {
        print(message, terminator: "\n\n")
    }
    
    func generateText() -> String {
        switch action {
        case .words:
            let text = SweetLorem.words(count, start: start)
            logger(text)
            return text
        case .paragraphs:
            let paragraphs = SweetLorem.paragraphs(count,
                                                   min: minWordsCount,
                                                   max: maxWordsCount,
                                                   start: start)
            let text = paragraphs.joined(separator: "\n\n")
            return text
        case .lists:
            let lists = SweetLorem.lists(count,
                                         minParagraphs: minParagraphsCount,
                                         maxParagraphs: maxParagraphsCount,
                                         minWords: minWordsCount,
                                         maxWords: maxWordsCount,
                                         start: start)
            var index = 0
            lists.forEach { paragraphs in
                index += 1
                logger("----- list \(index) -----")
                paragraphs.forEach { logger($0) }
            }
            let text = lists.map { $0.joined(separator: "\n\n") }.joined(separator: "\n\n")
            return text
        }
    }
    
    func previewText() {
        let text = generateText()
        routes.append(.preview(text))
    }
    
    func descriptor() {
        routes.append(.descriptor)
    }
}

enum GeneratorAction: Identifiable {
    case words
    case paragraphs
    case lists
    
    var id: Self { self }
}

enum NavigationRoute: Hashable {
    case preview(String)
    case descriptor
}

struct NumberPicker: View {
    let label: String
    @Binding var value: Int
    
    init(_ label: String, value: Binding<Int>) {
        self.label = label
        _value = value
    }
    
    private let values = 1 ..< 200
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Picker(label, selection: $value) {
                ForEach(values, id: \.self) { item in
                    Text("\(item)").tag(item)
                }
            }
            .pickerStyle(.menu)
        }
    }
}

#Preview {
    ContentView()
}
