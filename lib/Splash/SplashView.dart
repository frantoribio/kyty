


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashViewState();
  }
}

class _SplashViewState extends State<SplashView>{
  late BuildContext _context;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkSession();
  }

  void checkSession() async{
    await Future.delayed(Duration(seconds: 4));
    if (FirebaseAuth.instance.currentUser != null) {

      Navigator.of(_context).popAndPushNamed("/homeview");
    }
    else{
      Navigator.of(_context).popAndPushNamed("/loginview");
    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _context=context;

    Column column=Column(
      children: [
        Image.asset("resources/logo_kyty2.png",width: 300,
            height: 450),
        CircularProgressIndicator()
      ],
    );

    //return Image.network("https://cdn.discordapp.com/attachments/1094893510609608764/1154156474763845703/yony44_logo_using_cat_ears_and_head_like_disney_symbol_happy_an_1fccd304-c37e-410f-a9bd-155c310e365a.png");
    //return Image.network("https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/02/4cbe8d_f1ed2800a49649848102c68fc5a66e53mv2.gif?fit=476%2C280&ssl=1");
    return column;

  }


}