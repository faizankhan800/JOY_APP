import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';



class ExampleScreen extends StatefulWidget {
  ExampleScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

  Future<void> _getImageFromCamera() async {
    final pickedFile = await _picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:CircleAvatar(
          radius: 80,
          backgroundColor: Colors.grey[300],
          child: _imageFile == null
              ? Text('No image selected.')
              : ClipOval(
            child: Image.file(
              _imageFile!,
              width: 160,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _getImageFromCamera,
            tooltip: 'Take a picture',
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: _getImageFromGallery,
            tooltip: 'Select from gallery',
            child: Icon(Icons.photo_library),
          ),
        ],
      ),
    );
  }
}
