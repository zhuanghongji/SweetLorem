//
//  SweetLoremDescriptor.swift
//
//
//  Created by zhuanghongji on 2023/11/2.
//

import Foundation

public struct SweetLoremDescriptor {
    /// Either "Lorem Ipsum" or empty string.
    public let title: String

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

    init(title: String = "Lorem Ipsum",
         description: String,
         head1: String,
         content1: String,
         head2: String,
         content2: String,
         head3: String,
         content3: String,
         head4: String,
         content4: String)
    {
        self.title = title
        self.description = description
        self.head1 = head1
        self.content1 = content1
        self.head2 = head2
        self.content2 = content2
        self.head3 = head3
        self.content3 = content3
        self.head4 = head4
        self.content4 = content4
    }

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

// MARK: Statics

public extension SweetLoremDescriptor {
    /// Empty Descriptor.
    ///
    /// Every property in this descriptor is empty string.
    static let none = SweetLoremDescriptor(
        title: "",
        description: "",
        head1: "",
        content1: "",
        head2: "",
        content2: "",
        head3: "",
        content3: "",
        head4: "",
        content4: ""
    )

    /// English Descriptor.
    static let english = SweetLoremDescriptor(
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

    /// Chinese Descriptor.
    static let chinese = SweetLoremDescriptor(
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

    /// Japanese Descriptor.
    static let japanese = SweetLoremDescriptor(
        description: "痛みそのものを愛する人、それが痛みであるという理由だけで痛みを追い求め、それを手に入れたいと思う人は誰もいません。",
        head1: "ローレム・イプサムとは何ですか？",
        content1: "Lorem Ipsum は、印刷および植字業界の単なるダミー テキストです。 Lorem Ipsum は、無名の印刷業者が活字のゲラをスクランブルして活字見本帳を作成した 1500 年代以来、業界の標準的なダミーテキストです。それは 5 世紀だけでなく、電子写植への飛躍の時代にも、本質的には変わっていないまま生き残ってきました。これは、Lorem Ipsum の一節を含む Letraset シートのリリースによって 1960 年代に普及し、さらに最近では Lorem Ipsum のバージョンを含む Aldus PageMaker などのデスクトップ パブリッシング ソフトウェアによって普及しました。",
        head2: "なぜそれを使用するのでしょうか?",
        content2: "読者がレイアウトを見ると、ページの読みやすいコンテンツに気を取られてしまうことは、長年にわたって確立されてきた事実です。 Lorem Ipsum を使用するポイントは、「ここにコンテンツ、ここにコンテンツ」を使用するのとは対照的に、文字がほぼ正規分布になっており、読みやすい英語のように見えることです。多くのデスクトップ パブリッシング パッケージと Web ページ エディターは現在、Lorem Ipsum をデフォルトのモデル テキストとして使用しており、「lorem ipsum」を検索すると、まだ初期段階にある多くの Web サイトが見つかります。時には偶然、時には意図的に（ユーモアの注入など）、長年にわたってさまざまなバージョンが進化してきました。",
        head3: "それはどこから来たのですか？",
        content3: "一般に信じられていることに反して、Lorem Ipsum は単なるランダムなテキストではありません。紀元前 45 年の古典ラテン文学にルーツがあり、2000 年以上の歴史があります。バージニア州ハンプデン・シドニー大学のラテン語教授リチャード・マクリントックは、ローレム・イプサムの一節から、より難解なラテン語の一つである consectetur を調べ、古典文学におけるこの単語の引用を調べ、疑いの余地のない出典を発見した。 Lorem Ipsum は、紀元前 45 年に書かれたキケロの「de Finibus Bonorum et Malorum」（善悪の極み）のセクション 1.10.32 と 1.10.33 に由来しています。この本は倫理理論に関する論文であり、ルネサンス時代に非常に人気がありました。 Lorem Ipsum の最初の行「Lorem ipsum dolor sit amet..」は、セクション 1.10.32 の行から来ています。\n\n1500 年代から使用されている Lorem Ipsum の標準チャンクを、興味のある方のために以下に再掲します。 Cicero の「de Finibus Bonorum et Malorum」のセクション 1.10.32 と 1.10.33 も、H. Rackham による 1914 年の翻訳の英語版とともに、正確なオリジナルの形式で再版されています。",
        head4: "どこで入手できますか?",
        content4: "『ローレム・イプサム』の一節にはさまざまなバリエーションが存在しますが、その大部分は、注入されたユーモアや、少しでも信じられないランダムな単語によって、何らかの形で改変を受けています。 Lorem Ipsum の一節を使用する場合は、テキストの途中に恥ずかしいものが隠されていないことを確認する必要があります。インターネット上のすべての Lorem Ipsum ジェネレーターは、必要に応じて事前定義されたチャンクを繰り返す傾向があり、これがインターネット上で最初の真のジェネレーターとなっています。 200 を超えるラテン語の辞書といくつかのモデル文構造を組み合わせて、合理的に見える Lorem Ipsum を生成します。したがって、生成された Lorem Ipsum には、繰り返し、注入されたユーモア、特徴のない単語などが常に含まれていません。"
    )

    /// Arabic Descriptor.
    static let arabic = SweetLoremDescriptor(
        description: "لا يوجد أحد يحب الألم نفسه، ويسعى وراءه، ويريد الحصول عليه، لمجرد أنه ألم.",
        head1: "ما هو لوريم إيبسوم؟",
        content1: "لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لقد صمدت ليس فقط لخمسة قرون، بل قفزت أيضًا إلى التنضيد الإلكتروني، وبقيت دون تغيير بشكل أساسي. انتشر بشكل كبير في ستينيات القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع لوريم إيبسوم، ومؤخراً مع ظهور برامج النشر المكتبي مثل Aldus PageMaker والتي تضمنت إصدارات لوريم إيبسوم.",
        head2: "لماذا نستخدمه؟",
        content2: """
        إنها حقيقة مثبتة منذ زمن طويل أن المحتوى المقروء للصفحة سوف يشتت انتباه القارئ عند النظر إلى تخطيطها. المغزى من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي إلى حد ما للأحرف، على عكس استخدام "المحتوى هنا، المحتوى هنا"، مما يجعله يبدو وكأنه لغة إنجليزية قابلة للقراءة. العديد من حزم النشر المكتبي ومحرري صفحات الويب يستخدمون الآن لوريم إيبسوم كنص نموذجي افتراضي، والبحث عن 'lorem ipsum' سيكشف عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين، أحيانًا عن طريق الصدفة، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه).
        """,
        head3: "حيث أنها لا تأتي من؟",
        content3: """
        خلافاً للاعتقاد الشائع، فإن لوريم إيبسوم ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد، مما يجعلها أكثر من 2000 سنة. قام ريتشارد مكلينتوك، أستاذ اللغة اللاتينية في كلية هامبدن سيدني في فيرجينيا، بالبحث عن واحدة من أكثر الكلمات اللاتينية غموضًا، وهي consectetur، من مقطع لوريم إيبسوم، ومن خلال تصفح مراجع الكلمة في الأدب الكلاسيكي، اكتشف المصدر الذي لا شك فيه. يأتي نص لوريم إيبسوم من الأقسام 1.10.32 و1.10.33 من كتاب "de Finibus Bonorum et Malorum" (أقصى الخير والشر) لشيشرون، والذي كتبه عام 45 قبل الميلاد. هذا الكتاب عبارة عن أطروحة حول نظرية الأخلاق، والتي حظيت بشعبية كبيرة خلال عصر النهضة. السطر الأول من لوريم إيبسوم، \"Lorem ipsum dolor sit amet..\"، يأتي من سطر في القسم 1.10.32.\n\nالجزء القياسي من لوريم إيبسوم المستخدم منذ القرن السادس عشر مكرر أدناه للمهتمين. تم أيضًا إعادة إنتاج الأقسام 1.10.32 و1.10.33 من "de Finibus Bonorum et Malorum" لشيشرون في شكلها الأصلي تمامًا، مصحوبة بنسخ إنجليزية من ترجمة عام 1914 بواسطة H. Rackham.
        """,
        head4: "أين يمكنني الحصول على بعض؟",
        content4: "هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم، لكن الأغلبية عانت من التغيير بشكل ما، عن طريق إدخال الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق ولو قليلاً. إذا كنت ستستخدم فقرة من نص لوريم إيبسوم، فيجب أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات لوريم إيبسوم الموجودة على الإنترنت إلى تكرار أجزاء محددة مسبقًا حسب الضرورة، مما يجعل هذا المولد الحقيقي الأول على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية، بالإضافة إلى مجموعة من هياكل الجمل النموذجية، لإنشاء لوريم إيبسوم الذي يبدو معقولاً. ولذلك فإن لوريم إيبسوم الذي تم إنشاؤه يكون دائمًا خاليًا من التكرار أو الفكاهة المحقونة أو الكلمات غير المميزة وما إلى ذلك."
    )
}

// MARK: Default

public extension SweetLoremDescriptor {
    /// Get a `SweetLoremDescriptor` instance by current language.
    static var `default`: SweetLoremDescriptor {
        let languages = UserDefaults.standard.object(forKey: "AppleLanguages") as? [String]
        guard let lang = languages?.first else {
            return .english
        }
        // https://en.wikipedia.org/wiki/ISO_639-1
        // https://www.rfc-editor.org/rfc/rfc5646.txt
        if lang == "zh" || lang == "zh-Hans" || lang == "zh-Hant" {
            return .chinese
        }
        if lang == "ja" {
            return .japanese
        }
        if lang == "ar" {
            return .arabic
        }
        return .english
    }
}
