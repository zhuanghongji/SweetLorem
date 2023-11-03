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

### Title

```swift
SweetLorem.title
``` 

```
Lorem ipsum
```

### Description

```swift
SweetLorem.description
```

```
Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.
```

### Common

```swift
SweetLorem.common
```

```
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```

<br/>

## Generator ✨

### Words 

👉👇💡✨💫🌟⭐️🤩

1️⃣ Generate `1` paragraph in `5` words, with starter:

```swift
SweetLorem.words(start: true, count: 5)
```

```
Lorem ipsum dolor sit amet.
```

<br/> 

2️⃣ Generate `1` paragraph in `20` words, with starter:

```swift 
SweetLorem.words(start: true, count: 20)
```

```
Lorem ipsum dolor sit amet, in ad ut ex nulla eu quis eiusmod, eu nulla voluptate laboris non quis excepteur.
```

<br/> 

3️⃣ Generate `1` paragraph in `5` words, without starter:

```swift
SweetLorem.words(start: false, count: 5)
```

```
Eu irure cupidatat officia veniam.
```

<br/> 

4️⃣ Generate `1` paragraph in `30` words, without starter:

```swift
SweetLorem.words(start: false, count: 30)
```

```
In tempor, in duis ut adipiscing elit, nostrud ullamco culpa ut commodo est duis, aute ea in fugiat aute dolore laboris incididunt, aute voluptate laboris quis ut pariatur exercitation excepteur.
```

<br/>

### Paragraphs

1️⃣ Generate `2` paragraphs that each in `10...30` words:

```swift
SweetLorem.paragraphs(start: true, 
                      count: 2, 
                      minWordsCount: 10, 
                      minWordsCount: 30)
```

```
Lorem ipsum dolor sit amet, nostrud in culpa sint excepteur sunt, dolore dolore fugiat commodo dolore.

Id nulla nisi, quis ut dolor dolore nulla, adipiscing adipiscing excepteur cupidatat aliquip in commodo consectetur, aute dolore nulla ut sunt reprehenderit do in non, est nisi.
```

<br/>

2️⃣ Generate `3` paragraphs that each in `20...50` words:

```swift
SweetLorem.paragraphs(start: true, 
                      count: 3, 
                      minWordsCount: 20, 
                      minWordsCount: 50)
```

```
Lorem ipsum dolor sit amet, eu nulla commodo sunt veniam ad in sint cupidatat, consequat sunt adipiscing duis laboris sed ut do occaecat ad magna, id anim commodo enim in ex.

In, et minim ut proident, minim pariatur eiusmod ut laborum pariatur, sunt aliquip in reprehenderit culpa consectetur fugiat, laborum eu ex ut magna ad commodo veniam.

Do et consequat, sint in ut excepteur consequat in voluptate occaecat velit, non reprehenderit aliquip aliquip exercitation reprehenderit magna aliquip et cupidatat, nisi sunt sint aliqua elit aute eiusmod laborum.
```

### Lists

1️⃣ Generate `2` list that each in `2...3` paragraphs that each in `30...50` words:

```swift
SweetLorem.lists(start: true,
                 count: 2,
                 minWordsCount: 10,
                 maxWordsCount: 30,
                 minParagraphsCount: 2,
                 maxParagraphsCount: 3)
```

```
😵 ...
```

1️⃣ Generate `3` list that each in `3...4` paragraphs that each in `40...50` words:

```swift
SweetLorem.lists(start: true,
                 count: 3,
                 minWordsCount: 40,
                 maxWordsCount: 50,
                 minParagraphsCount: 3,
                 maxParagraphsCount: 4)
```

```
🤩 ...
```


## License

SweetLorem is available under the MIT license. See the LICENSE file for more info.