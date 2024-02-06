import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/pages/view_book.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';

import '../models/category.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computing'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  itemCount: categories.length,
                  physics: const BouncingScrollPhysics(),
                  //shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 100),
                  itemBuilder: (context, index) {
                    return GridTile(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewBookPage(
                                title: categories[index].title,
                                image: categories[index].image,
                              ),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRect(
                                child: Image.asset(categories[index].image)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              categories[index].title,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
