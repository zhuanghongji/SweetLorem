//
//  SweetLorem.swift
//
//
//  Created by zhuanghongji on 2023/11/3.
//

public enum SweetLorem {
    /// A title of Lorem ipsum.
    public static let title = SweetLoremConstant.title

    /// A description of Lorem ipsum.
    public static let description = SweetLoremConstant.description

    /// A common form of Lorem ipsum reads.
    public static let common = SweetLoremConstant.common
}

// MARK: Generator

extension SweetLorem {
    public static func words(start: Bool, count: Int) -> String {
        SweetLoremGenerator.generateParagraph(start: start, count: count)
    }

    public static func paragraphs(start: Bool,
                                  count: Int,
                                  minWordsCount: Int = 10,
                                  maxWordsCount: Int = 100) -> [String]
    {
        SweetLoremGenerator.generateParagraphs(start: start,
                                               count: count,
                                               minWordsCount: minWordsCount,
                                               maxWordsCount: maxWordsCount)
    }

    public static func lists(start: Bool,
                             count: Int,
                             minWordsCount: Int = 10,
                             maxWordsCount: Int = 100,
                             minParagraphsCount: Int = 5,
                             maxParagraphsCount: Int = 20) -> [[String]]
    {
        SweetLoremGenerator.generateParagraphsList(start: start,
                                                   count: count,
                                                   minWordsCount: minWordsCount,
                                                   maxWordsCount: maxWordsCount,
                                                   minParagraphsCount: minParagraphsCount,
                                                   maxParagraphsCount: maxParagraphsCount)
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
