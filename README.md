# SweetLorem

A beautiful and sweet [Lorem Ipsum](https://en.wikipedia.org/wiki/Lorem_ipsum?useskin=vector) generator for Swift and SwiftUI.

Inspired by [lipsum.com](https://lipsum.com/).

<br/>

## Install

```
https://github.com/zhuanghongji/SweetLorem
```

- Copy the URL of the repository provided above.
- Paste it into the text field located at the top-right corner of the window by navigating to "File" -> "Add Package Dependencies...".
- Click on "Add Package".

<br/>

## Constant

```swift
/// The title of Lorem ipsum.
public static let title = SweetLoremConstant.title

/// The introduction of Lorem ipsum.
public static let introduction = SweetLoremConstant.introduction

/// The common form of Lorem ipsum reads.
public static let common = SweetLoremConstant.common
```

For examples:

✨ The title of Lorem ipsum :

```swift
SweetLorem.title
```

> Lorem ipsum

<br/>

✨ The introduction of Lorem ipsum :

```swift
SweetLorem.introduction
```

> Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.

<br/>

✨ The common form of Lorem ipsum reads:

```swift
SweetLorem.common
```

> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

<br/>

## Generator 

### Words

```swift
/// Generate a single paragraph.
///
/// - Parameters:
///   - count: The count of words in the paragraph.
///   - start: If it's true, the paragraph will start with 
///            "Lorem ipsum dolor sit amet".
/// - Returns: The paragraph.
public static func words(_ count: Int, start: Bool = true) -> String {
    SweetLoremGenerator.generateParagraph(count: count, start: start)
}
```

For examples:

✨ Generate 1 paragraph in 10 words, with starter:

```swift
SweetLorem.words(10, start: true)
```

> Lorem ipsum dolor sit amet, nisi elit consectetur enim nulla.

<br/> 

✨ Generate 1 paragraph in 10 words, without starter:

```swift
SweetLorem.words(10, start: false)
```

> In exercitation cupidatat ut, mollit magna magna dolor ex qui.

<br/> 

✨ Generate 1 paragraph in 20 words, with starter:

```swift
SweetLorem.words(20, start: true)
```

> Lorem ipsum dolor sit amet, in ad ut ex nulla eu quis eiusmod, eu nulla voluptate laboris non quis excepteur.

<br/> 

✨ Generate 1 paragraph in 30 words, without starter:

```swift
SweetLorem.words(30, start: false)
```

> In tempor, in duis ut adipiscing elit, nostrud ullamco culpa ut commodo est duis, aute ea in fugiat aute dolore laboris incididunt, aute voluptate laboris quis ut pariatur exercitation excepteur.

<br/>

### Paragraphs

```swift
/// Generate multiple paragraphs.
///
/// - Parameters:
///   - count: The count of paragraphs.
///   - min: The minimum count of words in each paragraph.
///   - max: The maximum count of words in each paragraph.
///   - start: If it's true, the paragraph will start with 
///            "Lorem ipsum dolor sit amet".
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
```

For examples:

✨ Generate 2 paragraphs that each in 10...30 words:

```swift
SweetLorem.paragraphs(2)
```

<blockquote>
Lorem ipsum dolor sit amet, nostrud in culpa sint excepteur sunt, dolore dolore fugiat commodo dolore.

Id nulla nisi, quis ut dolor dolore nulla, adipiscing adipiscing excepteur cupidatat aliquip in commodo consectetur, aute dolore nulla ut sunt reprehenderit do in non, est nisi.
</blockquote>

<br/>

✨ Generate 3 paragraphs that each in 20...50 words:

```swift
SweetLorem.paragraphs(3, min: 20, max: 50)
```

<blockquote>
Lorem ipsum dolor sit amet, eu nulla commodo sunt veniam ad in sint cupidatat, consequat sunt adipiscing duis laboris sed ut do occaecat ad magna, id anim commodo enim in ex.

In, et minim ut proident, minim pariatur eiusmod ut laborum pariatur, sunt aliquip in reprehenderit culpa consectetur fugiat, laborum eu ex ut magna ad commodo veniam.

Do et consequat, sint in ut excepteur consequat in voluptate occaecat velit, non reprehenderit aliquip aliquip exercitation reprehenderit magna aliquip et cupidatat, nisi sunt sint aliqua elit aute eiusmod laborum.
</blockquote>

<br/>

### Lists

```swift
/// Generate multiple list of paragraphs.
/// - Parameters:
///   - count: The count of list.
///   - minParagraphs:The minimum count of paragraph in each list.
///   - maxParagraphs: The maximum count of paragraph in each list.
///   - minWords: The minimum count of words in each paragraph.
///   - maxWords: The maximum count of words in each paragraph.
///   - start: If it's true, the paragraph will start with 
///            "Lorem ipsum dolor sit amet".
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
```

For examples:

✨ Generate 2 list that each in 2...3 paragraphs that each in 10...30 words:

```swift
SweetLorem.lists(2)
```

> 😵 ...

<br/>

✨ Generate 3 list that each in 3...4 paragraphs that each in 20...50 words:

```swift
SweetLorem.lists(3,
                 minParagraphs: 3,
                 maxParagraphs: 4,
                 minWords: 20,
                 maxWords: 50)
```

> 🤩 ...

<br/>

## License

SweetLorem is available under the MIT license. See the LICENSE file for more info.

<br/>
