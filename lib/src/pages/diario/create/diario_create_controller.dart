

import 'dart:io';
import 'dart:math';


import 'package:book/src/db/db.dart';
import 'package:book/src/models/stock.dart';
import 'package:book/src/utils/my_snackbar.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:sn_progress_dialog/progress_dialog.dart';



class DiarioCreateController{

    BuildContext? context;

  TextEditingController tickerController= new TextEditingController();
  TextEditingController priceController = new TextEditingController();
    TextEditingController stockController = new TextEditingController();
    TextEditingController dateController = new TextEditingController();
    TextEditingController infoController = new TextEditingController();





    File? imageFile;
    Function? refresh;
    ProgressDialog? _progressDialog;
    bool isEnable = true;
    int validacionImagen=0;



  Future? init(BuildContext context, Function refresh){
    this.context=context;
    this.refresh=refresh;

    _progressDialog = ProgressDialog(context: context);


}

void register() async{


    String ticker=tickerController.text.trim();
    String price= priceController.text;
    String stock= stockController.text;
    String date= dateController.text.trim();
    String info= infoController.text;


    if(ticker.isEmpty ||price.isEmpty || stock.isEmpty || date.isEmpty || info.isEmpty){

      MySnackbar.show(context!, 'Debes ingresar todos los campos');
      return;

    }else{

      insert();
      tickerController.text='';
      priceController.text='';
      stockController.text='';
      dateController.text='';
      infoController.text='';
    }








}




    void insert(){

      DB.insert(Stock
        (
        ticker:tickerController.text,
        priceRecordBuy:priceController.text,
        numberStock:stockController.text,
        dateBuy:dateController.text,
        infoBuy:infoController.text,


      )
      );

      print(infoController.text);
      print('sera: ${DB.stocks()}');
    }







void back(){
    Navigator.pop(context!);
}




}
