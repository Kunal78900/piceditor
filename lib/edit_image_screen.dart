import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditImageScreen extends StatefulWidget {
  final String selectedImage;
  const EditImageScreen({Key? key, required this.selectedImage})
      : super(key: key);

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends State<EditImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.file(File(widget.selectedImage)),
      floatingActionButton: _addnewTextFab,
    );
  }

  Widget get _addnewTextFab => FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        tooltip: 'Add New Text',
        child: const Icon(
          Icons.edit,
          color: Colors.black,
        ),
      );
}
