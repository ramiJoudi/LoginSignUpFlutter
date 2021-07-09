import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:adobe_xd/pinned.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:xdtflutter/DashboardScreen.dart';
import 'package:xdtflutter/register.dart';
import 'main.dart';

import 'Services/AuthService.dart';

class iPhone6781 extends StatelessWidget {
  iPhone6781({
    Key? key,
  }) : super(key: key);
  final AuthService auth = AuthService();
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8f4b9e),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 102.0, middle: 0.5018),
            Pin(size: 44.0, middle: 0.2151),
            child: Text(
              'Login ',
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
            Pin(start: 51.0, end: 55.0),
            Pin(size: 43.0, middle: 0.3958),
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
            Pin(start: 51.0, end: 55.0),
            Pin(size: 38.0, middle: 0.5103),
            child: TextFormField(
              controller: _passwordController,
              validator: (value) {
                if (value == null) {
                  return 'Email cannot be empty';
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
            Pin(size: 102.0, middle: 0.5018),
            Pin(size: 44.0, middle: 0.6677),
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
                            'Login',
                            style: TextStyle(
                                fontSize: 15.0, color: const Color(0xff081e5a)),
                          ),
                          onPressed: () {
                            login(context);
                          },
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 159.0, end: 55.0),
            Pin(size: 20.0, middle: 0.5641),
            child: FlatButton(
              child: Text('Not registerd? Sign up'),
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    // fullscreenDialog: true,
                    builder: (context) => register(),
                  ),
                );
              },
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void login(BuildContext context) async {
    dynamic result1 =
        await auth.loginUser(_emailContoller.text, _passwordController.text);
    if (result1 == null) {
      Fluttertoast.showToast(
        msg: "Bad credential ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.blue,
      );
    } else if (result1 != null) {
      Navigator.pushNamed(context, '/dashboard');
    }
  }
}
