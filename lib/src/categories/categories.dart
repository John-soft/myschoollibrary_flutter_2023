import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final List<String> categories = [
    "Romance",
    "Thriller",
    "Inspiaration",
    "Fantasy",
    "Adventures",
    "Horror",
    "Comedy",
    "Mystery"
  ];

  final List<String> images = [
    "assets/images/romance.png",
    "assets/images/thriller.png",
    "assets/images/inspiration.png",
    "assets/images/fantasy.png",
    "assets/images/adventures.png",
    "assets/images/horror.png",
    "assets/images/comedy.png",
    "assets/images/mystery.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: AppColors.buttonColor, width: 0.5)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.buttonColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 50),
              const Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade700,
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
                suffixIcon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ),
                hintText: 'Harry Potter',
                hintStyle:
                    const TextStyle(fontSize: 18, color: AppColors.whiteColor),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                  ),
                  itemBuilder: (context, index) {
                    return GridTile(
                        child: Stack(
                      children: [
                        Image.asset(images[index]),
                        Positioned(
                          left: 8,
                          bottom: 25,
                          child: Text(
                            categories[index],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
