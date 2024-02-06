import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/button_widget.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/text_field.dart';

class EditBook extends StatefulWidget {
  const EditBook({super.key});

  @override
  State<EditBook> createState() => _EditBookState();
}

class _EditBookState extends State<EditBook> {
  final TextEditingController bookNameController = TextEditingController();
  final TextEditingController bookCategoryController = TextEditingController();
  final TextEditingController bookDescController = TextEditingController();

  File? _selectedFile;
  String selectedFileName = 'No File Selected';
  Future<void> _selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      _selectedFile = File(result.files.single.path!);
      selectedFileName = _selectedFile!.path.split('/').last;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Book",
          style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                titleColor: Colors.grey.shade700,
                title: 'Book name',
                fontSize: 14,
                controller: bookNameController,
              ),
              const SizedBox(height: 30),
              CustomTextField(
                titleColor: Colors.grey.shade700,
                title: 'Book category',
                fontSize: 14,
                controller: bookCategoryController,
              ),
              const SizedBox(height: 30),
              CustomTextField(
                titleColor: Colors.grey.shade700,
                title: 'Book description',
                fontSize: 14,
                controller: bookDescController,
              ),
              const SizedBox(height: 30),
              const Text('Add File'),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  _selectFile();
                },
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    border:
                        Border.all(strokeAlign: BorderSide.strokeAlignCenter),
                  ),
                  child: const Center(
                    child: Icon(Icons.upload_file_outlined),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              ButtonWidget(
                title: 'Save Changes',
                buttonColor: AppColors.buttonColor,
                textColor: Colors.white,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
