
import 'dart:async';

import 'package:book/src/db/db.dart';
import 'package:book/src/models/stock.dart';
import 'package:flutter/material.dart';
import 'package:yahoofin/yahoofin.dart';


class ChartController{

  BuildContext? context;
  Function? refresh;

  Timer? searchOnStoppedTyping;

  String tickerName ='';


  bool isEnable = false;

  TextEditingController tickerController= new TextEditingController();
  TextEditingController longNameController = new TextEditingController();
  TextEditingController currentPriceController = new TextEditingController();


  Future init(BuildContext context,Function refresh) async {
    this.context = context;
    this.refresh=refresh;
    refresh();
  }


  void price(String name) async {
    print('entre');
    var yfin = YahooFin();

    //StockInfo info = yfin.getStockInfo(ticker: name);
    //StockQuote price = await yfin.getPrice(stockInfo: info);

    bool doesExist = await yfin.checkSymbol(name);

    if(doesExist){
      print(doesExist);

      StockMeta meta = await yfin.getMetaData(name);
      if(meta.longName != null){


        StockInfo info = yfin.getStockInfo(ticker: name);
        StockQuote price = await yfin.getPrice(stockInfo: info);
        if(price.currentPrice != null){
          tickerController.text = (info.ticker!).toUpperCase();
          longNameController.text = meta.longName!;
          currentPriceController.text = (price.currentPrice!).toString();

          refresh!();
          isEnable = true;
        }else {

          tickerController.text= '';
          currentPriceController.text='';
          longNameController.text='';
          isEnable = false;
          refresh!();
        }




      }else{


        tickerController.text= '';
        currentPriceController.text='';
        longNameController.text='';
        isEnable = false;
        refresh!();
      }


    }else{

      tickerController.text= '';
      currentPriceController.text='';
      longNameController.text='';
      isEnable = false;
      refresh!();
    }



  }


  void onChangeText(String text){
    Duration duration = Duration(milliseconds: 800);

    if(searchOnStoppedTyping != null){
      searchOnStoppedTyping!.cancel();
     // refresh!();
    }

    searchOnStoppedTyping = new Timer(duration,(){

      tickerName = text;
      if(tickerName.isNotEmpty){
        price(tickerName);


      }else{

        tickerController.text= '';
        currentPriceController.text='';
        longNameController.text='';
        isEnable = false;

      }
      refresh!();

    });
  }

void insert(){

  DB.insert(Stock
      (ticker:tickerController.text,
      name:longNameController.text,
      price:currentPriceController.text));
  print('sera: ${DB}');
}

  void goToScreenTemarioPage(){
    Navigator.pushNamed(context!, 'start');

  }

  void goToHomePage(){
    Navigator.pushNamed(context!, 'home');

  }



}
