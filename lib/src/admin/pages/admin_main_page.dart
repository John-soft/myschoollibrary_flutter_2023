import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/model/book.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/pages/add_book.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/pages/admin_view_books.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/pages/edit_book.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/pages/view_categories.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/admin_tabs.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/search_field.dart';

class AdminMainPage extends StatefulWidget {
  const AdminMainPage({super.key});

  @override
  State<AdminMainPage> createState() => _AdminMainPageState();
}

class _AdminMainPageState extends State<AdminMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi, Admin",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdminTabs(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddBook()));
                  },
                  icon: Icons.menu_book_sharp,
                  text: "Add book",
                ),
                AdminTabs(
                  onTap: () {},
                  icon: Icons.add_box_rounded,
                  text: "Add Category",
                ),
                AdminTabs(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminViewBook()));
                  },
                  icon: Icons.visibility_outlined,
                  text: "View Books",
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdminTabs(
                  onTap: () {},
                  icon: Icons.settings_outlined,
                  text: "Settings",
                ),
                AdminTabs(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewCategories()));
                  },
                  icon: Icons.visibility_outlined,
                  text: "View Category",
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.abc,
                      color: Colors.white,
                    ),
                    Text(
                      "vdvcvvv",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Activities',
                  style:
                      Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                          ),
                ),
                const Text('See all'),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: bookModel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            border: Border.fromBorderSide(BorderSide(
                              width: 1,
                              color: Colors.grey,
                            )),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                bookModel[index].image,
                                height: 50,
                              ),
                              // const SizedBox(
                              //   width: 10,
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      bookModel[index].title,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blackColor,
                                          ),
                                    ),
                                    Text(
                                      bookModel[index].numOfBooks,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EditBook()));
                                    },
                                    child: const Icon(
                                      Icons.edit,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.delete_forever,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
