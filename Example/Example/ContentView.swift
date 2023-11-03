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
    
    var wordsCountDisabled: Bool {
        action == .words
    }
    
    var paragraphsCountDisabled: Bool {
        action == .words || action == .paragraphs
    }
    
    var body: some View {
        VStack {
            Button {
                logger(SweetLorem.words(6))
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
            .padding(.vertical)
            
            VStack {
                Toggle("Start", isOn: $start)
                Divider().padding(.vertical)
                NumberPicker("Count", value: $count)
                NumberPicker("MinWordsCount", value: $minWordsCount)
                    .disabled(wordsCountDisabled)
                NumberPicker("MaxWordsCount", value: $maxWordsCount)
                    .disabled(wordsCountDisabled)
                NumberPicker("MinParagraphsCount", value: $minParagraphsCount)
                    .disabled(paragraphsCountDisabled)
                NumberPicker("MaxParagraphsCount", value: $maxParagraphsCount)
                    .disabled(paragraphsCountDisabled)
            }
            .padding()
            Divider()
            Button(action: takeAction) {
                Text("Generate")
            }
            .buttonStyle(.borderedProminent)
            .padding(.top)
        }
        .padding()
    }
    
    func logger(_ message: String) {
        print(message, terminator: "\n\n")
    }
    
    func takeAction() {
        switch action {
        case .words:
            logger(SweetLorem.words(count, start: start))
        case .paragraphs:
            let paragraphs = SweetLorem.paragraphs(count,
                                                   min: minWordsCount,
                                                   max: maxWordsCount,
                                                   start: start)
            paragraphs.forEach { logger($0) }
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
        }
    }
}

enum GeneratorAction: Identifiable {
    case words
    case paragraphs
    case lists
    
    var id: Self { self }
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
