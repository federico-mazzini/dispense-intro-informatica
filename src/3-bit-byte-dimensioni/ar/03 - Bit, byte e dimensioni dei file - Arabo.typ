#import "/styles/template.typ": blu

#let titolo = "البت والبايت وحجم الملفات"
#let ink = rgb("#253245")
#let muted = rgb("#4B5B6F")
#let pale = rgb("#EEF5FC")
#let border = rgb("#BECEDD")

#set document(title: titolo)
#set text(
  font: "Geeza Pro",
  lang: "ar",
  dir: rtl,
  size: 16pt,
  fill: ink,
  top-edge: "ascender",
  bottom-edge: "descender",
)
#set align(right)
#set par(justify: false, leading: 0.38em, spacing: 0.8em)
#set page(
  paper: "a4",
  margin: (x: 21mm, top: 20mm, bottom: 19mm),
  header: context {
    if counter(page).get().first() > 1 {
      align(right, text(size: 9pt, fill: muted)[#titolo])
    }
  },
  footer: context align(left, text(dir: ltr, size: 10pt, fill: muted, counter(page).display("1"))),
)
#show heading: set block(sticky: true, above: 16pt, below: 8pt)
#show heading.where(level: 1): set text(size: 24pt, weight: "bold", fill: blu)
#show heading.where(level: 2): set text(size: 19pt, weight: "bold")
#set table(
  columns: (1fr, 1fr),
  align: right + horizon,
  inset: (x: 9pt, y: 6pt),
  stroke: (x: none, y: 0.55pt + border),
  fill: (_, y) => if y == 0 { pale },
)
#show table.cell.where(y: 0): set text(weight: "bold", fill: blu)

#let latin(value) = box(text(value, font: "Libertinus Serif", lang: "en", dir: ltr))
#let numero(n, body) = heading(level: 2)[#latin(str(n) + ".") #body]
#let box-note(body) = block(
  width: 100%,
  inset: (x: 12pt, y: 9pt),
  fill: pale,
  stroke: (right: 2pt + blu),
  radius: 3pt,
  above: 10pt,
  below: 11pt,
  breakable: false,
  body,
)
#let equation(body) = align(center, text(weight: "bold", fill: blu, latin(body)))
#let blank(width: 26mm) = box(width: width, line(length: 100%, stroke: 0.65pt + muted))
#let lines(n) = block(width: 100%, breakable: false, above: 3pt, below: 10pt, {
  for _ in range(n) {
    v(17pt)
    line(length: 100%, stroke: 0.55pt + border)
  }
})
#let title-page(body) = block(below: 18pt)[
  #line(length: 23mm, stroke: 3pt + blu)
  #v(8pt)
  #text(size: 34pt, weight: "bold", fill: blu, body)
  #v(5pt)
  #text(size: 14pt, fill: muted)[درس في المعلوماتية مع أمثلة وتمارين]
]
#let map-node(body) = block(
  width: 100%,
  height: 36pt,
  stroke: 0.75pt + border,
  radius: 3pt,
  align(center + horizon, body),
)
#let map-link(body) = block(above: 4pt, below: 4pt)[
  #set par(leading: 2pt)
  #text(size: 12pt, fill: muted, body)
  #linebreak()
  #text(font: "Libertinus Serif", size: 12pt, fill: blu)[↓]
]

#title-page([#titolo])

= البيانات والمعلومات

*البيانات* أشياء مثل الأرقام والكلمات والصور والأصوات. الرقم #latin("25") والاسم «لوكا» مثالان على البيانات.

*المعلومة* هي المعنى الذي نفهمه من البيانات. لمعرفة المعنى، نحتاج إلى معرفة ما تتحدث عنه البيانات.

#box-note[
  *رقم واحد ومعانٍ مختلفة*

  - في نشرة الطقس، #latin("25 °C") هي درجة الحرارة.
  - في الصف، #latin("25") قد يكون عدد الطلاب.
  - في متجر، #latin("25") يورو قد يكون سعر حقيبة.
]

= ما الملف؟

*الملف* مجموعة من البيانات نحفظها باسم. قد يحتوي الملف على نص أو صورة أو صوت أو فيديو.

#table(
  table.header([اسم الملف], [محتواه]),
  latin("vacanze.jpg"), [صورة],
  latin("appunti.txt"), [نص],
)

كل ملف يحتوي على بيانات. *حجم الملف* يخبرنا بكمية البيانات في الملف وبالمساحة التي يحتاج إليها عند حفظه.

#pagebreak()

= البت والبايت

يستخدم الحاسوب الرقمين #latin("0") و#latin("1") لتمثيل البيانات. نسمي هذه الطريقة *النظام الثنائي*.

كل رقم ثنائي اسمه *بت*. قيمة البت إما #latin("0") أو #latin("1"). في دوائر الحاسوب يمثّل الرقمان حالتين مختلفتين.

نكتب النصوص والصور والأصوات في الحاسوب على شكل سلاسل من البتات. كل مجموعة من *ثمانية بتات* تسمى *بايت*.

#box-note[
  #equation("0   1   1   0   1   0   0   1")
  #align(center)[ثمانية بتات تكوّن بايتًا واحدًا]
  #equation("8 b = 1 B")
  رمز البت حرف صغير #latin("b")، ورمز البايت حرف كبير #latin("B"). مثلًا، #latin("8 Mb") تعني ثمانية ميغابت، و#latin("8 MB") تعني ثمانية ميغابايت.
]

= كيف نقيس حجم الملف؟

نقيس حجم الملف *بالبايت*. كلما زاد عدد البايتات في الملف، زادت المساحة التي يحتاج إليها.

#table(
  table.header([نوع الملف], [مثال على الحجم]),
  [نص قصير], [#latin("500") بايت],
  [مستند], [#latin("85 000") بايت],
  [صورة], [#latin("3 000 000") بايت],
  [فيديو قصير], [#latin("45 000 000") بايت],
)

قد يختلف حجم ملفين من النوع نفسه. يعتمد الحجم على محتوى الملف وطريقة حفظه.

#pagebreak()

= وحدات أكبر من البايت

عندما يكون عدد البايتات كبيرًا، نستخدم وحدات مثل الكيلوبايت والميغابايت والغيغابايت. في هذه الورقة، كل وحدة في الجدول تساوي #latin("1024") من الوحدة التي قبلها.

#table(
  columns: (0.6fr, 1.2fr, 1.2fr),
  inset: (x: 9pt, y: 4pt),
  table.header([الرمز], [اسم الوحدة], [ما تساويه]),
  latin("B"), [بايت], [الوحدة الأساسية],
  latin("KB"), [كيلوبايت], latin("1 KB = 1024 B"),
  latin("MB"), [ميغابايت], latin("1 MB = 1024 KB"),
  latin("GB"), [غيغابايت], latin("1 GB = 1024 MB"),
  latin("TB"), [تيرابايت], latin("1 TB = 1024 GB"),
  latin("PB"), [بيتابايت], latin("1 PB = 1024 TB"),
  latin("EB"), [إكسابايت], latin("1 EB = 1024 PB"),
  latin("ZB"), [زيتابايت], latin("1 ZB = 1024 EB"),
  latin("YB"), [يوتابايت], latin("1 YB = 1024 ZB"),
)

هنا نستخدم #latin("1024"). في أماكن أخرى قد تجدين حسابات تستخدم #latin("1000").

= كيف نحوّل من وحدة إلى أخرى؟

#box-note[
  إلى الوحدة *الأكبر*، نقسم على #latin("1024") في كل خطوة.
  #linebreak()
  إلى الوحدة *الأصغر*، نضرب في #latin("1024") في كل خطوة.
]

#table(
  columns: (1fr, 1.55fr),
  table.header([التحويل], [الحساب]),
  [إلى وحدة أصغر], latin("2 GB = (2 × 1024) MB = 2048 MB"),
  [إلى وحدة أكبر], latin("3072 KB = (3072 ÷ 1024) MB = 3 MB"),
)

*خطوتان.* للتحويل من #latin("GB") إلى #latin("KB")، نمر أولًا بوحدة #latin("MB"). نضرب في #latin("1024") في كل خطوة.

#equation("1 GB = 1024 MB = (1024 × 1024) KB = 1 048 576 KB")

#pagebreak()

= مساحة التخزين

تشغل الملفات والتطبيقات ونظام التشغيل مساحة على الحاسوب أو الهاتف. لكل جهاز مساحة محدودة لحفظ البيانات.

#table(
  columns: (0.95fr, 1.7fr, 0.65fr),
  table.header([المصطلح], [المعنى], [مثال]),
  [السعة الكلّية], [كل مساحة التخزين في الجهاز], latin("512 GB"),
  [المساحة المستخدمة], [المساحة التي تشغلها البيانات المحفوظة], latin("320 GB"),
  [المساحة المتاحة], [المساحة الفارغة لحفظ بيانات جديدة], latin("192 GB"),
)

#box-note[
  لحساب المساحة المتاحة، نطرح المساحة المستخدمة من السعة الكلّية.
  #equation("512 GB − 320 GB = 192 GB")
]

#grid(
  columns: (5fr, 3fr),
  block(width: 100%, inset: 9pt, fill: blu, align(center, text(fill: white)[#latin("320 GB") مستخدمة])),
  block(width: 100%, inset: 9pt, fill: pale, align(center)[#latin("192 GB") متاحة]),
)

== فكّري وأجيبي

*أ.* سعة حاسوب #latin("256 GB"). المساحة المستخدمة #latin("180 GB"). كم بقي من المساحة؟

#lines(2)

*ب.* على ذاكرة #latin("USB") مساحة فارغة قدرها #latin("8 GB"). هل يمكنك حفظ ثلاثة فيديوهات، حجم كل واحد منها #latin("3 GB")؟ اشرحي إجابتك.

#lines(2)

#pagebreak()

= التمارين

#numero(1)[أكملي الجمل]

استخدمي كل كلمة أو رقم مرة واحدة.

#box-note[
  *الكلمات والأرقام*
  #linebreak()
  بايت، حجم، #latin("0")، بيانات، ثمانية، ملف، بت، #latin("1")
]

يستخدم الحاسوب الرقمين #blank(width: 12mm) و#blank(width: 12mm) لكي يمثّل #blank().

كل رقم ثنائي يسمى #blank(). كل #blank() بتات تكوّن #blank() واحدًا.

نحفظ نصًّا أو صورة أو صوتًا في #blank(). عدد البايتات يبيّن #blank() الملف.

#numero(2)[أكملي الخريطة]

اكتبي الكلمات في المربعات الفارغة. استخدمي كل كلمة مرة واحدة.

*الكلمات* ملف، بت، بايت، حجم، معلومات، مضاعفات

#block(width: 100%, below: 0pt)[
  #set block(spacing: 0pt)
  #align(center, block(
    width: 45%,
    inset: 7pt,
    radius: 3pt,
    fill: pale,
    stroke: 0.75pt + blu,
    align(center, text(weight: "bold", fill: blu)[البيانات]),
  ))
  #align(center, block(width: 0.75pt, height: 10pt, fill: border))
  #align(center, block(width: 67.8%, height: 0.75pt, fill: border))
]
#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 8pt,
  align: center,
  [
    #block(width: 0.75pt, height: 6pt, fill: border, above: 0pt, below: 0pt)
    #map-link[عندما نفهم معناها، نحصل على]
    #map-node[]
  ],
  [
    #block(width: 0.75pt, height: 6pt, fill: border, above: 0pt, below: 0pt)
    #map-link[نمثلها بوحدة اسمها]
    #map-node[]
    #map-link[ثمانية منها تكوّن]
    #map-node[]
  ],
  [
    #block(width: 0.75pt, height: 6pt, fill: border, above: 0pt, below: 0pt)
    #map-link[نحفظها في]
    #map-node[]
    #map-link[لكل ملف]
    #map-node[]
    #map-link[نقيسه بالبايت أو بوحدات أكبر منه تسمى]
    #map-node[]
  ],
)

#pagebreak()

= فهم البيانات والبتات

#numero(3)[صح أم خطأ؟]

اكتبي «صح» أو «خطأ» أمام كل جملة، ثم اشرحي السبب. استخدمي قاعدة #latin("1024") في هذه الورقة.

*أ.* البايت الواحد يتكوّن من ثمانية بتات. #blank(width: 17mm)
#lines(1)

*ب.* #latin("1 MB = 1000 KB") #blank(width: 17mm)
#lines(1)

*ج.* ملف حجمه #latin("2 GB") أكبر من ملف حجمه #latin("900 MB"). #blank(width: 17mm)
#lines(1)

#numero(4)[البيانات والمعلومات]

*أ.* اكتبي ثلاثة معانٍ مختلفة للرقم #latin("18"). في كل مرة، اكتبي ما الذي يشير إليه الرقم.
#lines(3)

*ب.* لديك هذه البيانات: «لوكا»، #latin("7")، «الرياضيات». اربطي بينها واكتبي جملة تبيّن معناها.
#lines(2)

#numero(5)[عدّي البتات والبايتات]

كم بتًا وكم بايتًا في هذه السلسلة؟

#box-note[#equation("01101001   11001010   00111101")]

عدد البتات #blank(width: 34mm) #h(15pt) عدد البايتات #blank(width: 34mm)

#pagebreak()

= ترتيب الملفات وتحويل الوحدات

#numero(6)[رتّبي الملفات حسب الحجم]

رتّبي الملفات من الأصغر إلى الأكبر. اشرحي كيف قارنتِ بين الأحجام.

#table(
  columns: (1.3fr, 0.7fr),
  table.header([اسم الملف], [الحجم]),
  latin("foto.jpg"), latin("3 MB"),
  latin("documento.pdf"), latin("750 KB"),
  latin("video.mp4"), latin("2 GB"),
  latin("appunti.txt"), latin("5 KB"),
  latin("musica.mp3"), latin("8 MB"),
)

*الترتيب*
#lines(2)

*كيف قارنتِ بين الأحجام؟*
#lines(2)

#numero(7)[حوّلي إلى الوحدة المطلوبة]

اكتبي الناتج وطريقة الحساب. العدد #latin("1,5") يعني واحدًا ونصفًا.

#table(
  inset: (x: 9pt, y: 10pt),
  table.header([التحويل], [طريقة الحساب]),
  latin("3 MB = __________ KB"), [],
  latin("4096 KB = __________ MB"), [],
  latin("1,5 GB = __________ MB"), [],
  latin("2 TB = __________ GB"), [],
)

#pagebreak()

= تصحيح الأخطاء وحل المسائل

#numero(8)[ابحثي عن الأخطاء وصحّحيها]

اكتبي «صحيحة» إذا كانت المساواة صحيحة. إذا كانت خاطئة، فاكتبي المساواة الصحيحة.

#table(
  inset: (x: 9pt, y: 3.5pt),
  table.header([المساواة], [الإجابة أو التصحيح]),
  latin("2 KB = 2048 B"), [],
  latin("3 MB = 3072 KB"), [],
  latin("4 GB = 4000 MB"), [],
  latin("2048 KB = 2 MB"), [],
  latin("1 TB = 1024 KB"), [],
)

#numero(9)[مسألتان عن أحجام الملفات]

*أ.* في مجلّد أربع صور، حجم كل واحدة #latin("3 MB"). وفيه أيضًا مستند حجمه #latin("512 KB"). ما الحجم الكلّي للمجلّد بوحدة #latin("KB")؟
#lines(2)

*ب.* يمكنك إرسال ملفات مرفقة بحجم كلّي لا يزيد على #latin("10 MB"). لديك مستند حجمه #latin("2 MB") وصورتان حجمهما #latin("4 MB") و#latin("5 MB"). هل يمكنك إرسال الملفات الثلاثة معًا؟ لماذا؟
#lines(2)

#numero(10)[اشرحي السبب]

*أ.* كيف يمكن أن يكون ملف نصّي أكبر من ملف صورة؟
#lines(1)

*ب.* لماذا قد يختلف حجم صورتين كثيرًا؟
#lines(1)

*ج.* كيف تكتبين الحجم #latin("2048 KB") بعدد أصغر ووحدة أخرى؟
#lines(1)

#pagebreak()

= نشاط على الحاسوب

#numero(11)[افحصي ثلاثة ملفات]

اختاري ثلاثة ملفات من أنواع مختلفة، مثل مستند وصورة وملف #latin("PDF"). افتحي خصائص كل ملف واقرئي حجمه. اكتبي العدد ووحدة القياس في الجدول.

#table(
  columns: (0.38fr, 1.4fr, 1fr, 0.95fr, 0.8fr),
  inset: (x: 7pt, y: 11pt),
  table.header([رقم], [اسم الملف], [نوعه], [الحجم], [الوحدة]),
  latin("1"), [], [], [], [],
  latin("2"), [], [], [], [],
  latin("3"), [], [], [], [],
)

*رتّبي الملفات من الأصغر إلى الأكبر.* إذا كانت الوحدات مختلفة، حوّلي الأحجام إلى الوحدة نفسها أولًا.

#latin("1.") #blank(width: 134mm)

#latin("2.") #blank(width: 134mm)

#latin("3.") #blank(width: 134mm)

#numero(12)[اكتبي دليلًا قصيرًا]

أنشئي مستندًا بعنوان «كم مساحة تشغل الملفات؟». ضعي فيه الجدول بعد إكماله، وترتيب الملفات من الأصغر إلى الأكبر، ونصًا قصيرًا تجيبين فيه عن هذه الأسئلة.

- أيّ ملف يحتوي على أكبر عدد من البايتات؟
- ما وحدة القياس التي ظهرت أكثر من غيرها؟
- ما الفرق بين محتوى الملف وحجمه؟

#box-note[
  *تذكّري.* البايت يقيس كمية البيانات في الملف، سواء كان الملف نصًّا أو صورة أو صوتًا أو فيديو.
]
