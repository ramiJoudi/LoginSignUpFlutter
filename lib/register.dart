import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:xdtflutter/iPhone6781.dart';
import 'package:image_picker/image_picker.dart';

import 'DatabaseManager/DatabaseManager.dart';
import 'Services/AuthService.dart';

class register extends StatefulWidget {
  @override
  registerState createState() => registerState();
}

class registerState extends State<register> {
  final AuthService _auth = AuthService();
  final DatabaseManager db = DatabaseManager();

  String? imageUrl;
  TextEditingController _nameContoller = TextEditingController();
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8f4b9e),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 114.0, middle: 0.5019),
            Pin(size: 44.0, middle: 0.2199),
            child: Text(
              'SignIn ',
              style: TextStyle(
                fontFamily: 'Ebrima',
                fontSize: 35,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 53.0, end: 53.0),
            Pin(size: 43.0, middle: 0.3686),
            child: TextFormField(
              controller: _nameContoller,
              validator: (value) {
                if (value == null) {
                  return 'name cannot be empty';
                } else
                  return null;
              },
              decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.white)),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 53.0, end: 53.0),
            Pin(size: 43.0, middle: 0.4808),
            child: TextFormField(
              controller: _emailContoller,
              validator: (value) {
                if (value == null) {
                  return 'Email cannot be empty';
                } else
                  return null;
              },
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white)),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 53.0, end: 53.0),
            Pin(size: 43.0, middle: 0.5817),
            child: TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value == null) {
                  return 'pass cannot be empty';
                } else
                  return null;
              },
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white)),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 53.0, end: 53.0),
            Pin(size: 43.0, middle: 0.68),
            child: InkWell(
              onTap: () => uploadImage(),
              child: Icon(
                Icons.photo_album,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, middle: 0.3023),
            Pin(size: 50.0, middle: 0.8),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0), Pin(start: 0.0, end: 0.0),
                    child: Container(
                      child: SizedBox(
                        width: 100,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)),
                          color: const Color(0xffffffff),
                          child: Text(
                            'sing Up',
                            style: TextStyle(
                                fontSize: 15.0, color: const Color(0xff081e5a)),
                          ),
                          onPressed: () {
                            createuser();
                          },
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, middle: 0.7025),
            Pin(size: 50.0, middle: 0.8),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0), Pin(start: 0.0, end: 0.0),
                    child: Container(
                      child: SizedBox(
                        width: 100,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blueGrey)),
                          color: const Color(0xffffffff),
                          child: Text(
                            'cancel',
                            style: TextStyle(
                                fontSize: 15.0, color: const Color(0xff081e5a)),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) => iPhone6781()));
                          },
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  void createuser() async {
    dynamic reuslt = await _auth.createNewUser(_nameContoller.text,
        _emailContoller.text, _passwordController.text, imageUrl);
    if (reuslt == null) {
      print('Email is not valid ');
    } else {
      reuslt.toString();
    }
  }

  uploadImage() async {
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile image;

    //Select Image
    image = await _picker.getImage(source: ImageSource.gallery);
    var file = File(image.path);

    if (image != null) {
      //Upload to Firebase
      var snapshot = await _storage
          .ref()
          .child('folderName/imageName')
          .putFile(file)
          .onComplete;

      var downloadUrl = await snapshot.ref.getDownloadURL();

      setState(() {
        imageUrl = downloadUrl;
      });
    }
  }
}
