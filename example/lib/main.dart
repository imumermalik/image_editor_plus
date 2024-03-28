import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_editor_plus/image_editor_plus.dart';
import 'package:image_editor_plus/options.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyEditorApp(),
    ),
  );
}

class MyEditorApp extends StatefulWidget {
  const MyEditorApp({super.key});

  @override
  State<MyEditorApp> createState() => _MyEditorAppState();
}

class _MyEditorAppState extends State<MyEditorApp> {
  Uint8List? imageData;

  @override
  void initState() {
    super.initState();
    loadAsset("image.jpg");
  }

  void loadAsset(String name) async {
    var data = await rootBundle.load('assets/$name');
    setState(() => imageData = data.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return ImageEditor(
      image: imageData,
      blurOption: null,
      brushOption: null,
      cropOption: null,
      filtersOption: null,
      flipOption: null,
      linkOption: null,

      imagePickerOption: const ImagePickerOption(
        captureFromCamera: true,
        pickFromGallery: true,
      ),
      isCamera: true,
    );
  }
}

class ImageEditorExample extends StatefulWidget {
  const ImageEditorExample({
    super.key,
  });

  @override
  createState() => _ImageEditorExampleState();
}

class _ImageEditorExampleState extends State<ImageEditorExample> {
  Uint8List? imageData;

  @override
  void initState() {
    super.initState();
    loadAsset("image.jpg");
  }

  void loadAsset(String name) async {
    var data = await rootBundle.load('assets/$name');
    setState(() => imageData = data.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageEditor Example"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageData != null) Image.memory(imageData!),
          const SizedBox(height: 16),
          ElevatedButton(
            child: const Text("Single image editor"),
            onPressed: () async {
              var editedImage = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageEditor(
                    isCamera: true,
                    image: imageData,
                    blurOption: null,
                    filtersOption: null,
                    emojiOption: null,
                    flipOption: null,
                    linkOption: null,
                    rotateOption: null,
                    imagePickerOption: const ImagePickerOption(
                      captureFromCamera: true,
                      pickFromGallery: true,
                    ),
                  ),
                ),
              );

              // replace with edited image
              if (editedImage != null) {
                imageData = editedImage;
                setState(() {});
              }
            },
          ),
          ElevatedButton(
            child: const Text("Multiple image editor"),
            onPressed: () async {
              var editedImage = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageEditor(
                    isCamera: true,
                    blurOption: null,
                    filtersOption: null,
                    emojiOption: null,
                    flipOption: null,
                    linkOption: null,
                    images: [
                      imageData,
                      imageData,
                    ],
                  ),
                ),
              );

              // replace with edited image
              if (editedImage != null) {
                imageData = editedImage;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
