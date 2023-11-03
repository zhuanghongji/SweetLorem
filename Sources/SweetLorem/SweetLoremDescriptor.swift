//
//  SweetLoremDescriptor.swift
//
//
//  Created by zhuanghongji on 2023/11/2.
//

import Foundation

public struct SweetLoremDescriptor {
    /// Always "Lorem Ipsum".
    public let title: String = "Lorem Ipsum"

    /// Localized string of "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain".
    public let description: String

    /// Localized string of "What is Lorem Ipsum?".
    public let head1: String
    /// Localized string of the content belongs to `head1`.
    public let content1: String

    /// Localized string of "Why do we use it?"
    public let head2: String
    /// Localized string of the content belongs to `head2`.
    public let content2: String

    /// Localized string of "Where does it come from?"
    public let head3: String
    /// Localized string of the content belongs to `head3`.
    public let content3: String

    /// Localized string of "Where can I get some?"
    public let head4: String
    /// Localized string of the content belongs to `head4`.
    public let content4: String

    // MARK: Computes

    var heads: [String] {
        [head1, head2, head3, head4]
    }

    var contents: [String] {
        [content1, content2, content3, content4]
    }

    var headAndContents: [(String, String)] {
        [(head1, content1), (head2, content2), (head3, content3), (head4, content4)]
    }

    var strings: String {
        stringsJoined(separator: "\n\n")
    }

    // MARK: Functions

    func stringsJoined(separator: String) -> String {
        [title,
         description,
         head1,
         content1,
         head2,
         content2,
         head3,
         content4].joined(separator: "\n\n")
    }
}

// MARK: Internal

public extension SweetLoremDescriptor {
    static let en = SweetLoremDescriptor(
        description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain.",
        head1: "What is Lorem Ipsum?",
        content1: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        head2: "Why do we use it?",
        content2: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        head3: "Where does it come from?",
        content3: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
        head4: "Where can I get some?",
        content4: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
    )

    static let zhHans = SweetLoremDescriptor(
        description: "无人爱苦，亦无人寻之欲之，乃因其苦。",
        head1: "什么是 Lorem Ipsum ？",
        content1: "Lorem Ipsum，也称乱数假文或者哑元文本，是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum 从西元 15 世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在 1960 年代，\"Leatraset\" 公司发布了印刷着 Lorem Ipsum 段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件 \"Aldus PageMaker\" 也通过同样的方式使 Lorem Ipsum 落入大众的视野。",
        head2: "我们为何用它？",
        content2: "无可否认，当读者在浏览一个页面的排版时，难免会被可阅读的内容所分散注意力。Lorem Ipsum 的目的就是为了保持字母多多少少标准及平均的分配，而不是 \"此处有文本，此处有文本\"，从而让内容更像可读的英语。如今，很多桌面排版软件以及网页编辑用 Lorem Ipsum 作为默认的示范文本，搜一搜 \"Lorem Ipsum\" 就能找到这些网站的雏形。这些年来 Lorem Ipsum 演变出了各式各样的版本，有些出于偶然，有些则是故意的（刻意的幽默之类的）。",
        head3: "它起源于哪里？",
        content3: "恰恰与流行观念相反，Lorem Ipsum 并不是简简单单的随机文本。它追溯于一篇公元前 45 年的经典拉丁著作，从而使它有着两千多年的岁数。弗吉尼亚州 Hampden-Sydney 大学拉丁系教授 Richard McClintock 曾在 Lorem Ipsum 段落中注意到一个涵义十分隐晦的拉丁词语，\"consectetur\"，通过这个单词详细查阅跟其有关的经典文学著作原文，McClintock 教授发掘了这个不容置疑的出处。Lorem Ipsum 始于西塞罗（Cicero）在公元前 45 年作的 \"de Finibus Bonorum et Malorum\"（善恶之尽）里 1.10.32 和 1.10.33 章节。这本书是一本关于道德理论的论述，曾在文艺复兴时期非常流行。Lorem Ipsum 的第一行 \"Lorem ipsum dolor sit amet..\" 节选于 1.10.32 章节。\n\n以下展示了自1500世纪以来使用的标准 Lorem Ipsum 段落，西塞罗笔下 \"de Finibus Bonorum et Malorum\" 章节 1.10.32，1.10.33 的原著作，以及其 1914 年译自 H. Rackham 的英文版本。",
        head4: "我能从哪里获取？",
        content4: "如今互联网提供各种各样版本的 Lorem Ipsum 段落，但是大多数都多多少少出于刻意幽默或者其他随机插入的荒谬单词而被篡改过了。如果你想取用一段 Lorem Ipsum，请确保段落中不含有令人尴尬的不恰当内容。所有网上的 Lorem Ipsum 生成器都倾向于在必要时重复预先准备的部分，然而这个生成器则是互联网上首个确切的生成器。它使用由超过 200 个拉丁单词所构造的词典，结合了几个模范句子结构，来生成看起来恰当的 Lorem Ipsum。因此，生成出的结果无一例外免于重复，刻意的幽默，以及非典型的词汇等等。"
    )
}

// MARK: Public

public extension SweetLoremDescriptor {
    /// Get a `SweetLoremDescriptor` instance by current language.
    static var `default`: SweetLoremDescriptor {
        let languages = UserDefaults.standard.object(forKey: "AppleLanguages") as? [String]
        guard let lang = languages?.first else {
            return .en
        }
        return switch lang {
        case "en":
            .en
        case "zh":
            .zhHans
        case "zh-hans":
            .zhHans
        case let _lang where _lang.hasPrefix("zh-"):
            .zhHans
        default:
            .en
        }
    }
}
