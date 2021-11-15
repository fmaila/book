
import 'package:book/src/db/db.dart';
import 'package:book/src/models/stock.dart';
import 'package:book/src/pages/screen/temario/screen_temario_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'diario_list_controller.dart';


class DiarioListPage extends StatefulWidget {
  const DiarioListPage({Key? key}) : super(key: key);

  @override
  _DiarioListPageState createState() => _DiarioListPageState();
}

class _DiarioListPageState extends State<DiarioListPage> {

  DiarioListController _con=new DiarioListController();
  List<Stock> stocks = [];

  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cargaStocks();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _con.init(context,refresh);

    });

  }


  cargaStocks() async {
    List<Stock> auxStock = await DB.stocks();

    setState(() {
      stocks = auxStock;
    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('Diario de trading',
          style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
          ) ,),
        actions: [

          Container(
              margin: EdgeInsets.only(right: 2),

              child: _iconAdd()
          ),
          Container(
              margin: EdgeInsets.only(right: 10),

              child: _iconDonwload()
          ),

        ],
      ),

      body: _build(context),


      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.grey,
        height: 50,
        items: [
          Icon(Icons.person,size: 20,color:Colors.black),
          Icon(Icons.home,size: 20,color:Colors.black),
          Icon(Icons.book,size: 20,color:Colors.black),
          Icon(Icons.menu_book_outlined,size: 20,color:Colors.black),
          Icon(Icons.addchart_outlined,size: 20,color:Colors.black),
          Icon(Icons.price_check_outlined,size: 20,color:Colors.black),
        ],
        index: 3,
        onTap: (index){

          debugPrint('actual Index is ${index}');
          if(index == 0){


          }else if(index == 1){
            _con.goToHomePage();
          }else if (index == 2){
            _con.goToScreenTemarioPage();
          }else if (index == 3){

          }else if (index == 4){

          }else if (index == 5){
            void goToChartPage(){


            }

          }

        },
      ),



    );
  }







  Widget _build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: stocks.length,

        itemBuilder: (BuildContext context, int i) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.lightBlueAccent
            ),
            height: 300,
            padding:EdgeInsets.all(3),
           // color: Colors.amber[colorCodes[i]],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('${stocks[i].ticker}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,

                ),),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white38
                  ),
                  padding:EdgeInsets.all(3),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Compra:',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          )),

                        ],
                      ),

                      SizedBox(height: 2,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Precio: ${stocks[i].priceRecordBuy}'),
                          Text(
                              '# Acciones : ${stocks[i].numberStock}'),

                        ],
                      ),
                      SizedBox(height: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Fecha: ${stocks[i].dateBuy}'),
                          Text(
                              'Inversión \$: ${double.parse(stocks[i].priceRecordBuy!)*double.parse(stocks[i].numberStock!)}'),

                        ],
                      ),
                      SizedBox(height: 2,),

                      Row(
                        children: [
                          Expanded(
                            child: Text(

                              'Info: ${stocks[i].infoBuy}',
                              textAlign: TextAlign.justify,
                              maxLines: 3,
                              overflow: TextOverflow.fade,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),




                ),



                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white38
                  ),
                  padding:EdgeInsets.all(3),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Venta:',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          )),

                        ],
                      ),

                      SizedBox(height: 2,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(  stocks[i].price == null ?
                              'Precio: ${stocks[i].price}':''),
                          Text( stocks[i].price == null ?
                              '# Acciones : ${stocks[i].price}':''),

                        ],
                      ),
                      SizedBox(height: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(stocks[i].price == null ?
                              'Fecha: ${stocks[i].price}':''),
                          Text(stocks[i].price == null ?
                              'Retorno \$: ${stocks[i].price}':''),

                        ],
                      ),
                      SizedBox(height: 2,),

                      Row(
                        children: [
                          Expanded(
                            child: Text(

                                'Info: Tendencia alcista, RSI 35 comnversa de los presidentes dfdf drsdfsdf sdfsdfs sdfsdf ssdfsd sdfsdf',
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                            overflow: TextOverflow.fade,),
                          ),

                        ],
                      ),

                    ],
                  ),




                ),


                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: _con.isEnable == true
                          ? Colors.green
                          : Colors.red
                  ),
                  padding:EdgeInsets.all(3),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'G/P:',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          )

                          ),
                          //Text(
                           //   '\$: ${(double.parse(stocks[i].price!) * 20).toStringAsFixed(2)}'),
                          //Text(
                           //   '%: ${(double.parse(stocks[i].price!) * 20).toStringAsFixed(2)}'),


                        ],
                      ),




                    ],
                  ),




                ),




              ],
            ),
          );

        },

      separatorBuilder: (BuildContext context, int index) => const Divider(),


    );
  }

  Widget _iconAdd(){
    return IconButton(

        onPressed: _con.goToDiarioCreatePage,
        icon: Icon(Icons.maps_ugc_outlined,color: Colors.white,size: 30,));
  }
  Widget _iconDonwload(){
    return IconButton(

        onPressed: _con.goToDiarioCreatePage,
        icon: Icon(Icons.download_outlined,color: Colors.white,size: 30,));
  }





  void refresh(){
    setState(() {

    });
  }





  }

