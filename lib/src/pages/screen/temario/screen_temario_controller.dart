
import 'package:flutter/material.dart';


class ScreenTemarioController{

  BuildContext? context;


  Future init(BuildContext context) async {
    this.context = context;


  }


  void goToHomePage(){
    Navigator.pushNamed(context!, 'home');

  }
  void goToCapituloUnoPage(){
    Navigator.pushNamed(context!, 'capitulo/uno');

  }

  void goToCapituloDosPage(){
    Navigator.pushNamed(context!, 'capitulo/dos');

  }
  void goToChartPage(){
    Navigator.pushNamed(context!, 'chart');

  }


}
