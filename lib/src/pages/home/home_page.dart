

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'home_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeController _con=new HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });

  }


  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(

          title: Text('Mundo de Traders',
              style:TextStyle(color: Colors.white)),
          elevation:0,
          backgroundColor:Colors.blueAccent,

        ),
      ),

      body: SingleChildScrollView(

        child: Column(

          children: [
            Stack(
              //alignment: Alignment.topCenter,
              children: [
                Container(

                  height: size.height*0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(50)


                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height*.05),
                        BookInfo(),

                      ],
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: size.height*0.55),

                  child: Column(

                    children: [

                    Container(
                        height: size.height*0.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(50)


                            )
                        ),

                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            SizedBox(height: size.height*.05),
                            DiarioInfo(),




                          ],
                        ),
                      ),



                    ),

                      SizedBox(height: 25),

                      Container(
                        height: size.height*0.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(50)


                            )
                        ),

                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              SizedBox(height: size.height*.05),
                              GestionRiesgo(),




                            ],
                          ),
                        ),



                      ),





                    ],




                  ),

                )

              ],
            ),



          ],
        ),
      ),

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
        index: 1,
        onTap: (index){

          debugPrint('actual Index is ${index}');
          if(index == 0){


          }else if(index == 1){

          }else if (index == 2){
            _con.goToScreenTemarioPage();

    }else if (index == 3){

            _con.goToDiarioListPage();

  }else if (index == 4){

  }else if (index == 5){
            _con.goToChartPage();
          }

        },
      ),

    );
  }

  Widget BookInfo(){
    return Row(

      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      //crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            //crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Text('Lecciones aprendidas',
                //textAlign: TextAlign.left,
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
              ),
              SizedBox(height: 15,),
              Text('Inviertiendo en la bolsa de valores de New York',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),

              ),
              SizedBox(
                height: 10,
              ),

              Text('"En un mundo de sueños solo el que se arriesga gana"',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color:Colors.white
                ),

              ),

              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){

              },

                  child: Text(
                    'Leer',

                  )
              ),



            ],
          ),
        ),
        SizedBox(width: 15,),
        Image.asset('assets/img/portadaBook.png',
          height: 200,)

      ],
    );
  }


  Widget DiarioInfo(){
    return       Row(
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('Mi diario de',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
                Text('Trading',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),

                ),
                SizedBox(
                  height: 5,
                ),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Expanded(
                        child: Column(


                          children: [


                            Text(

                              'Lleva el control de tus operaciones',
                              maxLines: 5,
                              style: TextStyle(
                                  fontSize: 10,
                                  color:Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(onPressed: (){

                            },

                                child: Text(
                                  'Ir',

                                ))

                          ],
                        )
                    ),


                  ],
                )

              ],
            )
        ),
        Image.asset('assets/img/midiario.png',
          height: 200,)
      ],
    );
  }


  Widget GestionRiesgo(){
    return       Row(
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('Gestión de',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                Text('Riesgo',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                ),
                SizedBox(
                  height: 5,
                ),
                Row(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Expanded(
                        child: Column(


                          children: [


                            Text(

                              'Haz tus entradas minimizando riesgos',
                              maxLines: 5,
                              style: TextStyle(
                                  fontSize: 10,
                                  color:Colors.white
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(onPressed: (){

                            },

                                child: Text(
                                  'Ir',

                                ))

                          ],
                        )
                    ),


                  ],
                )

              ],
            )
        ),
        Image.asset('assets/img/gestionriesgo.png',
          height: 200,)
      ],
    );
  }








  }

