

import 'package:book/src/pages/diario/create/diario_create_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


class DiarioCreatePage extends StatefulWidget {
  const DiarioCreatePage({Key? key}) : super(key: key);

  @override
  _DiarioCreatePageState createState() => _DiarioCreatePageState();
}

class _DiarioCreatePageState extends State<DiarioCreatePage> {

  DiarioCreateController _con=new DiarioCreateController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _con.dateController.text = "";
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _con.init(context,refresh);
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

        ),

        body: Container(
          //width: double.infinity,


                child: SingleChildScrollView(
                  child: Column(

                    children: [

                      SizedBox(height: 15,),
                      _textRegister(),
                      SizedBox(height: 15,),

                    _textFieldTicker(),

                      _textFieldPrice(),
                      _textFieldStock(),
                      SizedBox(height: 15,),
                      _textFieldFecha(),
                      SizedBox(height: 15,),
                      _textFieldInfo(),





                      _buttonLogin(),


                    ],


                  ),
                ),
              )






    );
  }











  Widget _textFieldPrice() {
    return Container(

        padding: EdgeInsets.all(15),

        child:Center(
            child:TextField(
              keyboardType: TextInputType.number,
              controller: _con.priceController, //editing controller of this TextField
              decoration: InputDecoration(
                  icon: Icon(Icons.money), //icon of text field
                  labelText: "Precio" //label text of field
              ),
              //set it true, so that user will not able to edit text

            )
        )


    );
  }
  Widget _textFieldStock() {
    return Container(

        padding: EdgeInsets.only(left: 15,right: 15),

        child:Center(
            child:TextField(
              keyboardType: TextInputType.number,
              controller: _con.stockController, //editing controller of this TextField
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on_outlined), //icon of text field
                  labelText: "# Stock" //label text of field
              ),
              //set it true, so that user will not able to edit text

            )
        )


    );
  }

  Widget _textFieldTicker() {
    return Container(

        padding: EdgeInsets.only(left: 15,right: 15),

        child:Center(
            child:TextField(
             controller: _con.tickerController, //editing controller of this TextField
              decoration: InputDecoration(
                  icon: Icon(Icons.sticky_note_2_outlined), //icon of text field
                  labelText: "Ticker" //label text of field
              ),
                //set it true, so that user will not able to edit text

            )
        )


    );
  }


  Widget _textFieldFecha() {
    return Container(

        padding: EdgeInsets.only(left: 15,right: 15),

        child:Center(
        child:TextField(
        controller: _con.dateController, //editing controller of this TextField
        decoration: InputDecoration(
            icon: Icon(Icons.calendar_today), //icon of text field
            labelText: "Fecha" //label text of field
        ),
        readOnly: true,  //set it true, so that user will not able to edit text
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context, initialDate: DateTime.now(),
              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2101)
          );

          if(pickedDate != null ){
            print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            print(formattedDate); //formatted date output using intl package =>  2021-03-16
            //you can implement different kind of Date Format here according to your requirement

            setState(() {
              _con.dateController.text = formattedDate; //set output date to TextField value.
            });
          }else{
            print("Date is not selected");
          }
        },
    )
        )


    );
  }



  Widget _textFieldInfo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    
      child: TextField(

        controller:_con.infoController,
        maxLength: 90,

        textAlign: TextAlign.justify,
        maxLines: 4,


        decoration: InputDecoration(
            labelText: 'Motivo de compra',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            contentPadding: EdgeInsets.all(
                15
            ),


        ),


      ),
    );
  }








  Widget _textRegister() {
    return Text(
      'Ingresar datos de compra',
      style: TextStyle(
          color: Colors.blueGrey,

          fontSize: 20,
          fontFamily: 'NimbusSans'
      ),
    );
  }

  Widget _buttonLogin(){
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),

      child: ElevatedButton(
        onPressed: _con.register,




        child: Text('Registrar',style: TextStyle(fontSize: 18),),
        style: ElevatedButton.styleFrom(
          //  primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.symmetric(vertical: 15)

        ),
      ),
    );
  }








  void refresh(){
    setState(() {

    });
  }

}