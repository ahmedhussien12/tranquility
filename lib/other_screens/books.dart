import 'package:flutter/material.dart';
import 'package:secondproject/core/designs/app_images.dart';
import 'package:secondproject/core/logic/helper.dart';
import 'package:secondproject/other_screens/book_detail.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  final list = [
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/b/8/b/e8debbe4eeb8b147e14ae1bfb7d74f8b.JPG.webp"),
    BookModel(
        title: "الداء والدواء ",
        desc: "طب و علاجيات",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/5/6/f/1/37c0e52fcb6f1d3f8d7171731c72f1fc.png.webp"),
    BookModel(
        title: "على أجنحة العصافير",
        desc: "حيوانات",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/5/c/b/109f46602e5cbfaced14ed38e3d7cabc.jpeg.webp"),
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/b/8/b/e8debbe4eeb8b147e14ae1bfb7d74f8b.JPG.webp"),
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/5/6/f/1/37c0e52fcb6f1d3f8d7171731c72f1fc.png.webp"),
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/b/8/b/e8debbe4eeb8b147e14ae1bfb7d74f8b.JPG.webp"),
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/b/8/b/e8debbe4eeb8b147e14ae1bfb7d74f8b.JPG.webp"),
    BookModel(
        title: "الداء والدواء ",
        desc: "طب و علاجيات",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/5/6/f/1/37c0e52fcb6f1d3f8d7171731c72f1fc.png.webp"),
    BookModel(
        title: "على أجنحة العصافير",
        desc: "حيوانات",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/5/c/b/109f46602e5cbfaced14ed38e3d7cabc.jpeg.webp"),
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/b/8/b/e8debbe4eeb8b147e14ae1bfb7d74f8b.JPG.webp"),
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/5/6/f/1/37c0e52fcb6f1d3f8d7171731c72f1fc.png.webp"),
    BookModel(
        title: "250 تقنية في التلاعب النفسي ",
        desc: "علم النفس",
        image:
            "https://www.noor-book.com/publice/covers_cache_webp/2/b/8/b/e8debbe4eeb8b147e14ae1bfb7d74f8b.JPG.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: DefaultTabController(
        length: 10,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xff333333), boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.25),
                )
              ]),
              child: SafeArea(
                child: TabBar(
                  isScrollable: true,
                  dividerHeight: 0,
                  tabAlignment: TabAlignment.start,
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: EdgeInsetsDirectional.only(
                      start: 16, top: 22, bottom: 22),
                  tabs: [
                    Text("All"),
                    Text("Sciences"),
                    Text("UI"),
                    Text("UX"),
                    Text("Flutter"),
                    Text("All"),
                    Text("Sciences"),
                    Text("UI"),
                    Text("UX"),
                    Text("Flutter"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(16),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 197 / 277),
                  itemCount: list.length,
                  itemBuilder: (context, index) => _item(model: list[index])),
            ),
          ],
        ),
      ),
    );
  }
}

class _item extends StatelessWidget {
  final BookModel model;

  const _item({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(BookDetail(model: model));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AppImages(
                  model.image,
                  fit: BoxFit.cover,
                  height: 230,
                  width: 195,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              model.title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              model.desc,
              style: TextStyle(fontSize: 10, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class BookModel {
  final String image, title, desc;

  BookModel({required this.image, required this.title, required this.desc});
}
