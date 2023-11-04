//
//  SweetLorem.swift
//
//
//  Created by zhuanghongji on 2023/11/3.
//

public enum SweetLorem {
    #if DEBUG
        /// It's only availble in debug.
        private static let enabled = true
    #else
        /// It's exactly disabled in production.
        private static let enabled = false
    #endif

    /// The title of Lorem ipsum.
    public static var title: String {
        enabled ? SweetLoremConstant.title : ""
    }

    /// The introduction of Lorem ipsum.
    public static var introduction: String {
        enabled ? SweetLoremConstant.introduction : ""
    }

    /// The common form of Lorem ipsum reads.
    public static var common: String {
        enabled ? SweetLoremConstant.common : ""
    }
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
        guard enabled else {
            return ""
        }
        return SweetLoremGenerator.generateParagraph(count: count, start: start)
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
        guard enabled else {
            return []
        }
        return SweetLoremGenerator.generateParagraphs(count: count,
                                                      minWordsCount: min,
                                                      maxWordsCount: max,
                                                      start: start)
    }

    /// Generate multiple paragraphs and joined to a string.
    ///
    /// - Parameters:
    ///   - count: The count of paragraphs.
    ///   - min: The minimum count of words in each paragraph.
    ///   - max: The maximum count of words in each paragraph.
    ///   - start: If it's true, the paragraph will start with "Lorem ipsum dolor sit amet".
    ///   - separator: The separotor of words joined for inserting.
    /// - Returns: The joined string of paragraphs.
    public static func paragraphsJoined(_ count: Int,
                                        min: Int = 10,
                                        max: Int = 30,
                                        start: Bool = true,
                                        separator: String = "\n\n") -> String
    {
        guard enabled else {
            return ""
        }
        return paragraphs(count,
                          min: min,
                          max: max,
                          start: start).joined(separator: separator)
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
        guard enabled else {
            return []
        }
        return SweetLoremGenerator.generateParagraphsList(count: count,
                                                          minParagraphsCount: minParagraphs,
                                                          maxParagraphsCount: maxParagraphs,
                                                          minWordsCount: minWords,
                                                          maxWordsCount: maxWords,
                                                          start: start)
    }

    /// Generate multiple list of paragraphs and joined to a string.
    ///
    /// - Parameters:
    ///   - count: The count of list.
    ///   - minParagraphs:The minimum count of paragraph in each list.
    ///   - maxParagraphs: The maximum count of paragraph in each list.
    ///   - minWords: The minimum count of words in each paragraph.
    ///   - maxWords: The maximum count of words in each paragraph.
    ///   - start: If it's true, the paragraph will start with "Lorem ipsum dolor sit amet".
    ///   - wordsSeparator: The separotor of words joined for inserting.
    ///   - paragraphsSeparator: The separotor of paragraphs joined for inserting.
    /// - Returns: The joined string of lists.
    public static func listsJoined(_ count: Int,
                                   minParagraphs: Int = 2,
                                   maxParagraphs: Int = 3,
                                   minWords: Int = 10,
                                   maxWords: Int = 30,
                                   start: Bool = true,
                                   wordsSeparator: String = "\n\n",
                                   paragraphsSeparator: String = "\n\n") -> String
    {
        guard enabled else {
            return ""
        }
        return lists(count,
                     minParagraphs: minParagraphs,
                     maxParagraphs: maxParagraphs,
                     minWords: minWords,
                     maxWords: maxWords,
                     start: start).map {
            $0.joined(separator: wordsSeparator)
        }
        .joined(separator: paragraphsSeparator)
    }
}

// MARK: Descriptor

extension SweetLorem {
    public static var `default`: SweetLoremDescriptor {
        enabled ? .default : .none
    }

    public static var english: SweetLoremDescriptor {
        enabled ? .english : .none
    }

    public static var chinese: SweetLoremDescriptor {
        enabled ? .chinese : .none
    }
    
    public static var japanese: SweetLoremDescriptor {
        enabled ? .japanese : .none
    }
    
    public static var arabic: SweetLoremDescriptor {
        enabled ? .arabic : .none
    }
}
