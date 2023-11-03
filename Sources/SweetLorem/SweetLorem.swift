//
//  SweetLorem.swift
//
//
//  Created by zhuanghongji on 2023/11/3.
//

public enum SweetLorem {
    /// The title of Lorem ipsum.
    public static let title = SweetLoremConstant.title

    /// The introduction of Lorem ipsum.
    public static let introduction = SweetLoremConstant.introduction

    /// The common form of Lorem ipsum reads.
    public static let common = SweetLoremConstant.common
}

// MARK: Generator

extension SweetLorem {
    /// Generate a single paragraph.
    ///
    /// - Parameters:
    ///   - count: The count of words in the paragraph.
    ///   - start: If it's true, the paragraph will start with "Lorem ipsum dolor sit amet".
    /// - Returns: The paragraph.
    public static func words(_ count: Int, start: Bool = true) -> String {
        SweetLoremGenerator.generateParagraph(count: count, start: start)
    }

    /// Generate multiple paragraphs.
    ///
    /// - Parameters:
    ///   - count: The count of paragraphs.
    ///   - min: The minimum count of words in each paragraph.
    ///   - max: The maximum count of words in each paragraph.
    ///   - start: If it's true, the paragraph will start with "Lorem ipsum dolor sit amet".
    /// - Returns: The paragraphs.
    public static func paragraphs(_ count: Int,
                                  min: Int = 10,
                                  max: Int = 30,
                                  start: Bool = true) -> [String]
    {
        SweetLoremGenerator.generateParagraphs(count: count,
                                               minWordsCount: min,
                                               maxWordsCount: max,
                                               start: start)
    }

    /// Generate multiple list of paragraphs.
    ///
    /// - Parameters:
    ///   - count: The count of list.
    ///   - minParagraphs:The minimum count of paragraph in each list.
    ///   - maxParagraphs: The maximum count of paragraph in each list.
    ///   - minWords: The minimum count of words in each paragraph.
    ///   - maxWords: The maximum count of words in each paragraph.
    ///   - start: If it's true, the paragraph will start with "Lorem ipsum dolor sit amet".
    /// - Returns: The lists of paragraphs.
    public static func lists(_ count: Int,
                             minParagraphs: Int = 2,
                             maxParagraphs: Int = 3,
                             minWords: Int = 10,
                             maxWords: Int = 30,
                             start: Bool = true) -> [[String]]
    {
        SweetLoremGenerator.generateParagraphsList(count: count,
                                                   minParagraphsCount: minParagraphs,
                                                   maxParagraphsCount: maxParagraphs,
                                                   minWordsCount: minWords,
                                                   maxWordsCount: maxWords,
                                                   start: start)
    }
}

// MARK: Descriptor

extension SweetLorem {
    public static var `default`: SweetLoremDescriptor {
        SweetLoremDescriptor.default
    }

    public static var en: SweetLoremDescriptor {
        SweetLoremDescriptor.en
    }

    public static var zhHans: SweetLoremDescriptor {
        SweetLoremDescriptor.zhHans
    }
}
