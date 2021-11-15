import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {


  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(milliseconds: 3000),()=>Navigator.of(context).pushNamedAndRemoveUntil('home', (route) => false));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container(
      height: double.infinity,
         color: Colors.red,


          // child: FlutterLogo(size:400),

           child:Image(
             height: double.infinity,
             fit: BoxFit.fill,
               image:AssetImage('assets/gif/splash.gif')
         ),
       ),






      
    );

  }
}
