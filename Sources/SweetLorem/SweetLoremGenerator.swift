// The Swift Programming Language
// https://docs.swift.org/swift-book

public enum SweetLoremGenerator {
    static let starter = "Lorem ipsum dolor sit amet, "
    
    static var remainder: String {
        SweetLoremConstant.common.replacingOccurrences(of: starter, with: "")
    }
}

// MARK: Utils

extension SweetLoremGenerator {
    /// Parse items from given source.
    public static func components(from source: String, retain: Bool) -> [String] {
        var result: [String] = []
        source.components(separatedBy: " ").forEach { item in
            for mark in [",", "."] {
                if item.hasSuffix(mark) {
                    result.append(item.replacingOccurrences(of: mark, with: ""))
                    if retain {
                        result.append(mark)
                    }
                    return
                }
            }
            result.append(item)
        }
        return result.map {
            $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        }.filter {
            !$0.isEmpty
        }
    }
    
    /// Take items by count.
    public static func take(items: [String], count: Int) -> [String] {
        items.prefix(count).map { String($0) }
    }
    
    /// Join items to paragraph.
    static func join(items: [String]) -> String {
        var result = ""
        var isFirst = true
        for item in items {
            if isFirst {
                isFirst = false
                result.append(item.capitalized)
                continue
            }
            if item == "," {
                result.append(",")
                continue
            }
            result.append(" ")
            result.append(item)
        }
        result.append(".")
        return result
    }
    
    static func wordCountList(totalCount: Int) -> [Int] {
        let minCount = 15
        let maxCount = 20
        if totalCount <= maxCount {
            return [totalCount]
        }
        
        var result: [Int] = []
        var remainCount = totalCount
        while remainCount > 0 {
            guard let randomCount = (minCount ... maxCount).randomElement() else {
                continue
            }
            if remainCount <= randomCount + minCount {
                result.append(remainCount)
                break
            }
            remainCount -= randomCount
            result.append(randomCount)
        }
        return result
    }
}

// MARK: Interfaces

extension SweetLoremGenerator {
    public static func generateSentence(start: Bool, count totalCount: Int) -> String {
        let starterWords = components(from: starter, retain: false)
        let remainderWords = components(from: remainder, retain: false)
        
        // check if words from starer is enough
        var items = start ? starterWords : []
        var remainCount = totalCount - items.count
        guard remainCount > 0 else {
            return join(items: take(items: items, count: totalCount))
        }
        
        // append word from remainder
        var preWord = ""
        var rangeCount = 0
        var maxRangeCount = items.count
        if maxRangeCount > 0 {
            items.append(",")
        }
        while remainCount > 0 {
            guard let word = remainderWords.randomElement(), word != preWord else {
                continue
            }
            if rangeCount > maxRangeCount, Bool.random() {
                maxRangeCount = rangeCount
                rangeCount = 0
                items.append(",")
            } else {
                rangeCount += 1
            }
            remainCount -= 1
            items.append(word)
        }
        return join(items: items)
    }
    
    public static func generateParagraph(start: Bool, count totalCount: Int) -> String {
        var isFirst = true
        var sentences: [String] = []
        for count in wordCountList(totalCount: totalCount) {
            let sentence = generateSentence(start: isFirst ? start : false, count: count)
            sentences.append(sentence)
            isFirst = false
        }
        return sentences.joined(separator: " ")
    }
    
    public static func generateParagraphs(start: Bool,
                                          count: Int,
                                          minWordsCount: Int,
                                          maxWordsCount: Int) -> [String]
    {
        var result: [String] = []
        for index in 0 ..< count {
            let wordsCount = Int.random(in: minWordsCount ... maxWordsCount)
            let paragraph = generateParagraph(start: index == 0 ? start : false, count: wordsCount)
            result.append(paragraph)
        }
        return result
    }
    
    public static func generateParagraphsList(start: Bool,
                                              count: Int,
                                              minWordsCount: Int,
                                              maxWordsCount: Int,
                                              minParagraphsCount: Int,
                                              maxParagraphsCount: Int) -> [[String]]
    {
        var result: [[String]] = []
        for index in 0 ..< count {
            let paragraphsCount = Int.random(in: minParagraphsCount ... maxParagraphsCount)
            let paragraphs = generateParagraphs(start: index == 0 ? start : false,
                                                count: paragraphsCount,
                                                minWordsCount: minWordsCount,
                                                maxWordsCount: maxWordsCount)
            result.append(paragraphs)
        }
        return result
    }
}
