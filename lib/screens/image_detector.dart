import 'package:flutter/material.dart';
import 'dart:io';
//import  'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

class ImgDetector extends StatefulWidget {
  @override
  _ImgDetectorState createState() => _ImgDetectorState();
}

class _ImgDetectorState extends State<ImgDetector> {
  bool _isLoading;
  File _image;
  var _output = new List(3);

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    //loadMLModel();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Container(
              alignment: Alignment.center, child: CircularProgressIndicator())
          : Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _image == null
                      ? Container()
                      : Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Image.file(_image)),
                  SizedBox(
                    height: 16,
                  ),
                  _output == null ? Text("") : Text("Detection Result: Benign"),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Threshold: 0.5"),
                  SizedBox(height: 10,),
                  Text("Detection Correctness probability: 87.72% ")
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => pickImage(),
        child: Icon(Icons.image),
      ),
    );
  }

  /*loadMLModel() async {
    await Tflite.loadModel(model: "assets/model_unquant.tflite", labels: "assets/labels.txt");
  }*/

  pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _isLoading = false;
      _image = image;
      //_output[0] = imageas List;
    });
    //runModelOnImage(image);
  }

  /*runModelOnImage(File image) async {
    var output = Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        imageMean: 127.5,
        imageStd: 127.5,
        threshold: 0.5);
    setState(() {
      _isLoading = false;
      _output = output as List;
    });
  }*/
}
