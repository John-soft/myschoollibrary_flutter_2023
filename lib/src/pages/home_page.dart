import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myschoollibrary_flutter_2023/src/categories/categories.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';

import '../widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, John",
                    style:
                        Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                              fontSize: 18,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                  ),
                  const Icon(Icons.notifications_outlined)
                ],
              ),
              const Text("Glad to have you here"),
              const SizedBox(
                height: 20,
              ),
              const SearchField(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Image.asset('assets/images/influence.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Invisible Influence',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyMedium!
                              .copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Sed ut perspiciatis unde\nomnis iste natus error sit\nvoluptatem accusantium\ndoloremque',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 15,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          onRatingUpdate: (value) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Explore by categories',
                style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoriesPage()));
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/categories.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Computing'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/categories.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Engineering'),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/categories.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Science'),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/categories.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Agriculture'),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/categories.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Architecture'),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/categories.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('Physics'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'More books',
                    style:
                        Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.blackColor,
                            ),
                  ),
                  GestureDetector(onTap: () {}, child: const Text('See all')),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/images/audio1.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/audio2.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Engineering Science',
                    style:
                        Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.blackColor,
                            ),
                  ),
                  GestureDetector(onTap: () {}, child: const Text('See all')),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/images/audio1.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/audio2.png')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
