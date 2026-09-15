import 'package:flutter/material.dart';

void main() {
  runApp(const PhysicsApp());
}

class PhysicsApp extends StatelessWidget {
  const PhysicsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fizika Formulalari Pro',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF38BDF8),
          surface: Color(0xFF1E293B),
        ),
      ),
      home: const MainHomeScreen(),
    );
  }
}

class Chapter {
  final String title;
  final String emoji;
  final Color textColor;
  final List<String> paragraphs;

  Chapter({
    required this.title,
    required this.emoji,
    required this.textColor,
    required this.paragraphs,
  });
}

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  String searchQuery = '';
  final Map<String, String> _customData = {};
  final Set<String> _bookmarked = {};

  final List<Chapter> chapters = [
    Chapter(
      title: 'KINEMATIKA',
      emoji: '⚡🏎️',
      textColor: const Color(0xFFFF7043),
      paragraphs: [
        '1-§. Moddiy nuqtaning harakati',
        '2-§. To\'g\'ri chiziqli tekis harakat',
        '3-§. To\'g\'ri chiziqli tekis harakatni grafik usulda tasvirlash',
        '4-§. Harakat nisbiyligi va tezliklarni qo\'shish',
        '5-§. To\'g\'ri chiziqli tekis o\'zgaruvchan bo\'lmagan notekis harakat',
        '6-§. To\'g\'ri chiziqli tekis o\'zgaruvchan harakat',
        '7-§. Notekis harakatni grafik usulda tasvirlash',
        '8-§. Jismlarning erkin tushishi',
        '9-§. Jismning aylana bo\'ylab tekis harakati',
        '10-§. Aylana bo\'ylab tekis harakatni uzatish',
        '11-§. Aylana bo\'ylab notekis harakat',
        '12-§. Gorizontal otilgan jism harakati',
        '13-§. Gorizontga burchak ostida otilgan jism harakati',
      ],
    ),
    Chapter(
      title: 'DINAMIKA',
      emoji: '🚀💥',
      textColor: const Color(0xFF4ADE80),
      paragraphs: [
        '1-§. Zichlik va massa. Nyutonning birinchi qonuni',
        '2-§. Nyutonning uchinchi qonuni',
        '3-§. Markazga intilma va markazdan qochma kuchlar',
        '4-§. Butun olam tortishish qonuni. Erkin tushish tezlanishi',
        '5-§. Og\'irlik va og\'irlik kuchi',
        '6-§. Kosmik tezliklar',
        '7-§. Elastiklik kuchi. Guk qonuni',
        '8-§. Prujinalarni ketma-ket va parallel ulash',
        '9-§. Ishqalanish kuchlari',
        '10-§. Qiya tekislikda ishqalanish kuchi ta\'siridagi harakat',
        '11-§. Gorizontal va vertikal tekislikda kuchlar ta\'siri',
        '12-§. Qiya tekislikda bir necha kuch ta\'siridagi harakat',
        '13-§. Ko\'chmas va ko\'char blok',
        '14-§. Jism va kuch impulsi',
        '15-§. Impulsning saqlanish qonuni',
        '16-§. Mexanik ish',
        '17-§. Kinetik va potensial energiya',
        '18-§. Mexanik energiya va ish orasidagi bog\'liqlik',
        '19-§. Mexanik energiyaning saqlanish qonuni',
        '20-§. Quvvat',
      ],
    ),
    Chapter(
      title: 'STATIKA',
      emoji: '⚖️🏗️',
      textColor: const Color(0xFFFACC15),
      paragraphs: [
        '1-§. Jismlarning muvozanati. Kuch momenti',
      ],
    ),
    Chapter(
      title: 'SUYUQLIK VA GAZLAR MEXANIKASI',
      emoji: '🌊💧',
      textColor: const Color(0xFF38BDF8),
      paragraphs: [
        '1-§. Bosim va uning o\'lchov birligi',
        '2-§. Suyuqlik va gazlar uchun Paskal qonuni. Gidravlik press',
        '3-§. Suyuqlikning idish tubiga va devorlariga bosimi',
        '4-§. Atmosfera bosimi',
        '5-§. Arximed kuchi',
        '6-§. Suyuqliklarning trubalardagi harakati',
      ],
    ),
    Chapter(
      title: 'MOLEKULYAR FIZIKA VA TERMODINAMIKA',
      emoji: '🔥🌡️',
      textColor: const Color(0xFFF43F5E),
      paragraphs: [
        '1-§. Molekulyar-kinetik nazariyaning asoslari. Broun harakati',
        '2-§. Diffuziya hodisasi. Molekulalarning o\'zaro ta\'siri',
        '3-§. Ideal gaz molekulyar-kinetik nazariyasining tenglamasi',
        '4-§. Temperatura. Temperaturaning absolyut shkalasi',
        '5-§. Klapeyron tenglamasi',
        '6-§. Boyl – Mariott qonuni',
        '7-§. Gey-Lyussak qonuni',
        '8-§. Sharl qonuni',
        '9-§. Ideal gaz holat tenglamasi',
        '10-§. Jismlarning ichki energiyasi',
        '11-§. Issiqlik miqdori',
        '12-§. Yoqilg\'ining yonish issiqligi',
        '13-§. Issiqlik balansi tenglamasi',
        '14-§. Termodinamikada ish tushunchasi',
        '15-§. Termodinamikaning birinchi qonuni',
        '16-§. Izotermik jarayon uchun birinchi qonun',
        '17-§. Izobarik jarayon uchun birinchi qonun',
        '18-§. Izoxorik jarayon uchun birinchi qonun',
        '19-§. Adiabatik jarayon uchun birinchi qonun',
        '20-§. Issiqlik dvigatellari va ularning FIK',
        '21-§. Qaynash. Bosimga bog\'liqlik',
        '22-§. Bug\' hosil bo\'lish va kondensatsiya',
        '23-§. To\'yingan va to\'yinmagan bug\'',
        '24-§. Absolyut va nisbiy namlik',
        '25-§. Suyuqliklarda sirt taranglik',
        '26-§. Xo\'llash',
        '27-§. Kapillyar hodisalar',
        '28-§. Kristall va amorf jismlar',
        '29-§. Erish va qotish',
        '30-§. Qattiq jismlarning mexanik xossalari va deformatsiyasi',
        '31-§. Jismlarning issiqlikdan kengayishi',
      ],
    ),
    Chapter(
      title: 'ELEKTROSTATIKA VA ELEKTR TOKI',
      emoji: '⚡🔌',
      textColor: const Color(0xFFA855F7),
      paragraphs: [
        '1-§. Elektr zaryadi. Zaryadning saqlanish qonuni',
        '2-§. Kulon qonuni. Zaryad sirt zichligi',
        '3-§. Elektr maydon va uning kuchlanganligi',
        '4-§. Potensial va potensiallar ayirmasi',
        '5-§. Kondensator va uning elektr sig\'imi',
        '6-§. Elektr toki. Tok kuchi va tok zichligi',
        '7-§. Zanjirning bir qismi uchun Om qonuni',
        '8-§. O\'tkazgichning elektr qarshiligi',
        '9-§. Berk zanjir uchun Om qonuni',
      ],
    ),
    Chapter(
      title: 'OPTIKA VA ATOM FIZIKASI',
      emoji: '🔬🌈',
      textColor: const Color(0xFFEC4899),
      paragraphs: [
        '1-§. Yorug\'likning to\'g\'ri chiziq bo\'ylab tarqalishi',
        '2-§. Yorug\'likning sinish qonuni',
        '3-§. Linza formulasi',
        '4-§. Fotoeffekt. Fotonlar',
        '5-§. Rezerford tajribasi. Atomning planetar modeli',
        '6-§. Atom yadrolarining bog\'lanish energiyasi',
      ],
    ),
    Chapter(
      title: 'ILOVALAR (JADVALLAR)',
      emoji: '📊📚',
      textColor: const Color(0xFF2DD4BF),
      paragraphs: [
        '1. Grek alfaviti',
        '2. Miqdor ulushlari va karrali kattaliklar',
        '3. Doimiy fizik kattaliklar (Konstantalar)',
        '4. SI dagi asosiy birliklar',
        '5. Qattiq moddalarning zichligi',
        '6. Suyuqliklarning zichligi',
        '7. Solishtirma qarshiliklar jadvali',
        '8. D. I. Mendeleyevning davriy sistemasi',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '⚡ FIZIKA FORMULALARI',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 1.1),
        ),
        backgroundColor: const Color(0xFF1E293B),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Mavzu yoki paragrafni izlang...',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Color(0xFF38BDF8)),
                filled: true,
                fillColor: const Color(0xFF1E293B),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  searchQuery = val.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: chapters.length,
              itemBuilder: (context, index) {
                final chapter = chapters[index];
                final filteredParagraphs = chapter.paragraphs
                    .where((p) => p.toLowerCase().contains(searchQuery))
                    .toList();

                if (searchQuery.isNotEmpty && filteredParagraphs.isEmpty) {
                  return const SizedBox.shrink();
                }

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E293B),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: chapter.textColor.withValues(alpha: 0.3), width: 1),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    leading: Text(chapter.emoji, style: const TextStyle(fontSize: 22)),
                    title: Text(
                      chapter.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: chapter.textColor,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      '${filteredParagraphs.length} ta mavzu',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    children: filteredParagraphs.map((paragraph) {
                      final isBookmarked = _bookmarked.contains(paragraph);
                      final hasContent = _customData.containsKey(paragraph);

                      return ListTile(
                        contentPadding: const EdgeInsets.only(left: 20, right: 12),
                        title: Text(
                          paragraph,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: chapter.textColor.withValues(alpha: 0.9),
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (hasContent)
                              const Icon(Icons.check_circle_rounded, color: Color(0xFF4ADE80), size: 18),
                            IconButton(
                              icon: Icon(
                                isBookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                                color: isBookmarked ? const Color(0xFFFACC15) : Colors.grey,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (isBookmarked) {
                                    _bookmarked.remove(paragraph);
                                  } else {
                                    _bookmarked.add(paragraph);
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        onTap: () {
                          _openDetailScreen(context, paragraph, chapter.textColor);
                        },
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _openDetailScreen(BuildContext context, String title, Color color) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ParagraphDetailScreen(
          title: title,
          color: color,
          initialContent: _customData[title] ?? '',
          onSave: (newContent) {
            setState(() {
              _customData[title] = newContent;
            });
          },
        ),
      ),
    );
  }
}

class ParagraphDetailScreen extends StatefulWidget {
  final String title;
  final Color color;
  final String initialContent;
  final Function(String) onSave;

  const ParagraphDetailScreen({
    super.key,
    required this.title,
    required this.color,
    required this.initialContent,
    required this.onSave,
  });

  @override
  State<ParagraphDetailScreen> createState() => _ParagraphDetailScreenState();
}

class _ParagraphDetailScreenState extends State<ParagraphDetailScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialContent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF1E293B),
        foregroundColor: widget.color,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '📌 ${widget.title}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: widget.color),
            ),
            const SizedBox(height: 12),
            const Text(
              'Ushbu mavzuga oid formulalarni kiriting:',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TextField(
                controller: _controller,
                maxLines: null,
                expands: true,
                style: const TextStyle(color: Colors.white),
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: 'Masalan:\nv = s / t\nF = m * a',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFF1E293B),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.color,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                icon: const Icon(Icons.save_rounded, color: Colors.black),
                label: const Text('SAQLASH', style: TextStyle(fontWeight: FontWeight.w900)),
                onPressed: () {
                  widget.onSave(_controller.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Ma\'lumot saqlandi!')),
                  );
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
