

import 'package:book/src/pages/capitulo/dos/capitulo_dos_page.dart';
import 'package:book/src/pages/capitulo/uno/capitulo_uno_page.dart';
import 'package:book/src/pages/chart/chart_page.dart';
import 'package:book/src/pages/diario/create/diario_create_page.dart';
import 'package:book/src/pages/diario/list/diario_list_page.dart';
import 'package:book/src/pages/home/home_page.dart';
import 'package:book/src/pages/screen/splash/screen_splash.dart';
import 'package:book/src/pages/screen/temario/screen_temario_page.dart';



import 'package:flutter/material.dart';





void main() async{

  WidgetsFlutterBinding.ensureInitialized();


  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      // initialRoute: 'login',
      initialRoute: 'splash',
      routes: {
        'splash':(BuildContext context)=>ScreenSplash(),
        'home':(BuildContext context)=>HomePage(),
        'start':(BuildContext context)=>ScreenTemarioPage(),
        'chart':(BuildContext context)=>ChartPage(),
        'diario':(BuildContext context)=>DiarioListPage(),
        'diario/create':(BuildContext context)=>DiarioCreatePage(),
        'capitulo/uno':(BuildContext context)=>CapituloUnoPage(),
        'capitulo/dos':(BuildContext context)=>CapituloDosPage(),


      },


      home: ScreenSplash(),
    );
  }
}

