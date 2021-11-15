
import 'package:flutter/material.dart';


class CapituloUnoController{

  BuildContext? context;




  Future init(BuildContext context) async {
    this.context = context;



  }







  void goToCapituloUnoPage(){
    Navigator.pushNamed(context!, 'capitulo/uno');

  }

  void goToPasswordResetPage(){
    Navigator.pushNamed(context!, 'client/password/reset');

  }


}