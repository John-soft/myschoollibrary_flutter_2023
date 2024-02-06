import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/pages/read_books.dart';

class ViewBookPage extends StatefulWidget {
  final String title;
  final String image;
  const ViewBookPage({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  State<ViewBookPage> createState() => _ViewBookPageState();
}

class _ViewBookPageState extends State<ViewBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.image,
                width: 120,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadBookPage(
                          title: widget.title,
                        ),
                      ),
                    );
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.menu_book_rounded),
                      Text(
                        'Read Book',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Icon(Icons.star_border_outlined),
                    Text(
                      '4.8 Rating',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Icon(Icons.cloud_download_outlined),
                    Text(
                      'Read Book',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Book Preview',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Diam quis non\nvitae ut mattis diam integer nunc. Congue eleifend varius morbi ac in lorem eget est euismod. Et pulvinar faucibus sed ac eros diam sed. Suspendisse pellentesque et ac',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'About Author',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Diam quis non vitae ut mattis diam integer nunc. Congue eleifend varius morbi ac in lorem eget est euismod. Et pulvinar faucibus sed ac eros diam sed. Suspendisse pellentesque et ac pellentesque at tempor feugiat ante at. Suspendisse rhoncus neque amet ultrices mattis nisl risus. Gravida sit magnis eu interdum convallis. Amet nisl enim vitae lobortis. Facilisis cursus duis vitae ipsum integer purus mauris sagittis nibh. Ac consectetur ut at suspendisse. Risus faucibus ut risus rutrum tempor leo lacinia massa. Morbi interdum ac mi non condimentum. Nibh in mauris dictumst ',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
