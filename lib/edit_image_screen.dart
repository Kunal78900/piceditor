import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:piceditor/widgets/edit_image_viewmodel.dart';
import 'package:piceditor/widgets/image_text.dart';

class EditImageScreen extends StatefulWidget {
  final String selectedImage;
  const EditImageScreen({Key? key, required this.selectedImage})
      : super(key: key);

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends EditImageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Stack(
            children: [
              _selectedImage,
              for (int i = 0; i < texts.length; i++)
                Positioned(
                  left: texts[i].left,
                  top: texts[i].top,
                  child: GestureDetector(
                    onLongPress: () {
                      print("Long Press Detected");
                    },
                    onTap: () {
                      print("Single press detected");
                    },
                    child: Draggable(
                      feedback: ImageText(textInfo: texts[i]),
                      child: ImageText(
                        textInfo: texts[i],
                      ),
                      onDragEnd: (drag) {
                        final renderBox =
                            context.findRenderObject() as RenderBox;
                        Offset off = renderBox.globalToLocal(drag.offset);
                        setState(() {
                          texts[i].top = off.dy - 96;
                          texts[i].left = off.dx;
                        });
                      },
                    ),
                  ),
                ),
              (creatorText.text.isNotEmpty)
                  ? Positioned(
                      left: 0,
                      bottom: 0,
                      child: Text(
                        creatorText.text,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.3)),
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
      floatingActionButton: _addnewTextFab,
    );
  }

  Widget get _selectedImage => Center(
        child: Image.file(
          File(
            widget.selectedImage,
          ),
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
        ),
      );
  Widget get _addnewTextFab => FloatingActionButton(
        onPressed: () => addNewDialog(context),
        backgroundColor: Colors.white,
        tooltip: 'Add New Text',
        child: const Icon(
          Icons.edit,
          color: Colors.black,
        ),
      );
  AppBar get _appbar => AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.save,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  tooltip: 'Save Image',
                ),
              ],
            )),
      );
}
