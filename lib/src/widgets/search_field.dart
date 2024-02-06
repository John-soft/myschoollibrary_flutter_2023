import 'package:flutter/material.dart';

import '../style/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.search_outlined,
          weight: 5,
          color: Colors.black,
        ),
        hintText: 'Search for books',
      ),
    );
  }
}
