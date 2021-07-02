import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class iPhone6781 extends StatelessWidget {
  iPhone6781({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff081e5a),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 37.0, end: 37.0),
            Pin(size: 181.0, start: 79.0),
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
            Pin(start: 41.0, end: 37.0),
            Pin(size: 275.0, end: 96.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 45.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(41.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 97.0, middle: 0.49),
                  Pin(size: 90.0, start: 0.0),
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
              ],
            ),
          ),
          Pinned.fromPins(
              Pin(start: 67.0, end: 66.0), Pin(size: 32.0, middle: 0.6362),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
              )),
          Pinned.fromPins(
              Pin(start: 67.0, end: 66.0), Pin(size: 30.0, middle: 0.7127),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
              )),
          Pinned.fromPins(
            Pin(size: 114.0, middle: 0.5019),
            Pin(size: 44.0, middle: 0.8058),
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
                          color: const Color(0xff081e5a),
                          child: Text(
                            'Login',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
