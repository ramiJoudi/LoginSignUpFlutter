import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:adobe_xd/pinned.dart';

class GooglePixel51 extends StatelessWidget {
  GooglePixel51({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081e5a),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 28.0, end: 27.0),
            Pin(size: 203.0, start: 104.0),
            child:
                // Adobe XD layer: 'Fichier 15' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pland.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 51.0, end: 50.0),
            Pin(size: 294.0, middle: 0.7522),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 128.0, middle: 0.5019),
            Pin(size: 119.0, middle: 0.4918),
            child:
                // Adobe XD layer: 'Fichier 16' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pl.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
              Pin(start: 78.0, end: 79.0), Pin(size: 45.0, middle: 0.6154),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term'),
              )),
          Pinned.fromPins(
            Pin(start: 78.0, end: 79.0),
            Pin(size: 42.0, middle: 0.707),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 119.0, middle: 0.4854),
            Pin(size: 42.0, middle: 0.7874),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                color: const Color(0xff081e5a),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 49.0, middle: 0.2762),
            Pin(size: 27.0, middle: 0.6032),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 83.0, middle: 0.3065),
            Pin(size: 27.0, middle: 0.693),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 49.0, middle: 0.4884),
            Pin(size: 27.0, middle: 0.7731),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
