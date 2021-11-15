
import 'dart:async';


import 'package:book/src/models/stock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/widgets.dart';





class DiarioListController{

  Stock? stock;

  BuildContext? context;
  Function? refresh;

  Timer? searchOnStoppedTyping;

  String tickerName ='';

  double total =0;


  bool isEnable = false;



  static const MethodChannel _channel =
  const MethodChannel('sqlitetoexcel');


  Future init(BuildContext context,Function refresh) async {
    this.context = context;
    this.refresh=refresh;

    refresh();
  }




  static Future<String> exportSpecificTables(
      String dbName,
      String exportFolder,
      String customPath,
      String filename,
      List tables,
      List excludes,
      Map<dynamic,dynamic> prettify) async {
    Map argsMap = <String, dynamic>{
      'db': dbName,
      'exportFolder' : exportFolder,
      'customPath': customPath,
      'filename': filename,
      'tables' : tables,
      'excludes' : excludes,
      'prettify' : prettify
    };
    final String result = await _channel.invokeMethod('exportSpecificTables',argsMap);
    return result;
  }














  void goToDiarioCreatePage(){
    Navigator.pushNamed(context!, 'diario/create');

  }



  void goToChartPage(){
    Navigator.pushNamed(context!, 'chart');

  }

  void goToScreenTemarioPage(){
    Navigator.pushNamed(context!, 'start');

  }

  void goToHomePage(){
    Navigator.pushNamed(context!, 'home');

  }



}
