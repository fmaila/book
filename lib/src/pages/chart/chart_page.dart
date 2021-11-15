
import 'package:book/src/db/db.dart';
import 'package:book/src/models/stock.dart';
import 'package:book/src/pages/screen/temario/screen_temario_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'chart_controller.dart';


class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {

  ChartController _con=new ChartController();
  List<Stock> stocks = [];

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
    var size= MediaQuery.of(context).size;
    return Scaffold(

      appBar: PreferredSize(

        preferredSize: Size.fromHeight(215),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:Colors.blue,

          actions: [


          ],
          flexibleSpace: Column(
              children: [

              SizedBox(height: 50),
              _textFieldSearch(),

                _ticker(),
                _longName(),
                _currentPrice(),
                SizedBox(height: 10,),
                _agregar()
]

          ),




        ),
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
        index: 5,
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

          }

        },
      ),



    );
  }


  Widget _textFieldSearch(){
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))
      ),

      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
       onChanged: _con.onChangeText,
        decoration: InputDecoration(
            hintText: 'Buscar Ticker',
            suffixIcon: Icon(Icons.search,
                color: Colors.grey[400]),
            hintStyle: TextStyle(
                fontSize: 17,
                color:Colors.grey
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                    color:Colors.grey
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                    color:Colors.grey
                )
            ),
            contentPadding: EdgeInsets.only(left: 20)
        ),
      ),
    );
  }


  Widget _ticker(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 6),
      child: TextField(


        decoration: new InputDecoration.collapsed(
            border: InputBorder.none,
            hintText: ''
        ),
        controller: _con.tickerController,
        style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          fontWeight: FontWeight.w600


        ),

        )

    );
  }
  Widget _longName(){
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(

          decoration: new InputDecoration.collapsed(
              border: InputBorder.none,
              hintText: ''
          ),
          controller: _con.longNameController,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,

          ),

        )

    );
  }
  Widget _currentPrice(){
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 4),
        child: TextField(

          decoration: new InputDecoration.collapsed(
              border: InputBorder.none,
              hintText: ''
          ),
          controller: _con.currentPriceController,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
              fontWeight: FontWeight.w600

          ),

        )

    );
  }


  Widget _agregar(){

    return  Container(



      child:  ElevatedButton(

        child: Text('Agrear a la lista de seguiiento',style: TextStyle(color: Colors.black),),
        style: ElevatedButton.styleFrom(
          primary: Colors.lightGreen,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),


        ),


        onPressed:  _con.isEnable
            ? _con.insert : null,




      ),
    );
  }



  Widget _build(BuildContext context) {
    return ListView.builder(
        itemCount: stocks.length,
        itemBuilder:
            (context, i) =>
            Dismissible(key: Key(i.toString()),
                direction: DismissDirection.startToEnd,
                background: Container (
                    color: Colors.red,
                    padding: EdgeInsets.only(left: 5),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.delete, color: Colors.white)
                    )
                ),
                onDismissed: (direction) {
                  DB.delete(stocks[i]);
                },

                child: ListTile(
                    title: Text( stocks[i].price!),
                    subtitle: Text(stocks[i].ticker! + '-'+stocks[i].name!),
                    trailing: MaterialButton(
                        onPressed: () {

                        },
                        child: Icon(Icons.edit)
                    )
                ),


            )
    );
  }





  void refresh(){
    setState(() {

    });
  }





  }

