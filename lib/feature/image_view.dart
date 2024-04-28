import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_10/core/functions.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  File? pickedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image View"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundImage:
                  pickedImage == null ? null : FileImage(pickedImage!),
              child: IconButton(
                  onPressed: () async {
                    File? temp = await galleryPicker();
                    if (temp != null) {
                      pickedImage = temp;
                      setState(() {});
                    }
                  },
                  icon: pickedImage == null
                      ? const Icon(
                          Icons.person,
                          size: 80,
                        )
                      : const Text("")),
            ),
          ),
        ],
      ),
    );
  }
}
