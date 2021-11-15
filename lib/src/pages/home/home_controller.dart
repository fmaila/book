
import 'package:flutter/material.dart';


class HomeController{

  BuildContext? context;


  Future init(BuildContext context) async {
    this.context = context;


  }



  void goToScreenTemarioPage(){
    Navigator.pushNamed(context!, 'start');

  }
  void goToChartPage(){
    Navigator.pushNamed(context!, 'chart');

  }

  void goToCapituloUnoPage(){
    Navigator.pushNamed(context!, 'capitulo/uno');

  }

  void goToDiarioListPage(){
    Navigator.pushNamed(context!, 'diario');

  }


}
