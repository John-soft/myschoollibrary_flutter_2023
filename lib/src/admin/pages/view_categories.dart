import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/pages/edit_book.dart';

import '../../style/colors.dart';
import '../model/book.dart';

class ViewCategories extends StatelessWidget {
  const ViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
            ),
          ],
        ),
      ),
    );
  }
}
