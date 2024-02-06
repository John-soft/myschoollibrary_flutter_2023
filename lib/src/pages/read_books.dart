import 'package:flutter/material.dart';

class ReadBookPage extends StatefulWidget {
  const ReadBookPage({super.key, required this.title});
  final String title;

  @override
  State<ReadBookPage> createState() => _ReadBookPageState();
}

class _ReadBookPageState extends State<ReadBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        actions: const [
          Icon(Icons.bookmark),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: ListView(
          children: const [
            Text(
              'Chapter 1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Sed lorem ut ut lorem cras duis elementum. Volutpat cursus auctor viverra nec augue libero. Dui ipsum ante dictumst dignissim risus ut nibh dolor. Nisi ullamcorper consequat enim faucibus adipiscing leo sit non iaculis. Non justo quis varius fames ut. In lobortis neque massa dictum in in orci gravida vitae. Risus cras vitae pellentesque duis integer. Neque dignissim faucibus tincidunt quam libero turpis ultricies. Elementum neque aliquet sit tortor lectus. Lorem dolor potenti lorem amet at.\nPorttitor vulputate mauris condimentum aliquet. Urna vitae accumsan fames amet lorem ipsum commodo. Pellentesque elit integer et vitae adipiscing turpis fames suspendisse. Diam risus arcu odio velit suscipit magna bibendum maecenas dolor. Eu egestas scelerisque sed aliquet. Pharetra at adipiscing ut tincidunt leo pellentesque massa a. Vel volutpat egestas augue neque pellentesque placerat diam sit eu. Venenatis feugiat pellentesque consequat vitae volutpat. In facilisis enim sed morbi faucibus condimentum.\nAmet rhoncus varius tincidunt pretium tellus enim. Justo placerat vulputate ipsum vitae commodo non tellus rutrum. Accumsan nibh metus id pellentesque at tempor feugiat ante at. Suspendisse rhoncus neque amet ultrices mattis nisl risus. Gravida sit magnis eu interdum convallis. Amet nisl enim vitae lobortis. Facilisis cursus duis vitae ipsum integer purus mauris sagittis nibh. Ac consectetur ut at suspendisse. Risus faucibus ut risus rutrum tempor leo lacinia massa. Morbi interdum ac mi non condimentum. Nibh in mauris dictumst\nDiam risus arcu odio velit suscipit magna bibendum maecenas dolor. Eu egestas scelerisque sed aliquet. Pharetra at adipiscing ut tincidunt leo pellentesque massa a. Vel volutpat egestas augue neque pellentesque placerat diam sit eu. Venenatis feugiat pellentesque consequat vitae volutpat. In facilisis enim sed morbi faucibus condimentum. lobortis neque massa dictum in in orci gravida vitae. Risus cras vitae pellentesque duis integer. Neque dignissim faucibus tincidunt quam libero turpis ultricies. Elementum neque aliquet sit tortor lectus.',
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
