
import 'package:book/src/pages/screen/temario/screen_temario_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class ScreenTemarioPage extends StatefulWidget {
  const ScreenTemarioPage({Key? key}) : super(key: key);

  @override
  _ScreenTemarioPageState createState() => _ScreenTemarioPageState();
}

class _ScreenTemarioPageState extends State<ScreenTemarioPage> {

  ScreenTemarioController _con=new ScreenTemarioController();

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
              alignment: Alignment.topCenter,
              children: [
                Container(

                  height: size.height*0.4,
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
                Padding(padding: EdgeInsets.only(top: size.height*0.45),

                child: Column(

                  children: [
                   TemarioCard(
                       size,
                     'Capítulo 1:',
                     'El mercado financiero',
                       (_con.goToCapituloUnoPage),

                   ),


                    TemarioCard(
                      size,
                      'Capitulo 2:',
                      'Plataformas tecnológicas',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 3:',
                      'Tipos de trading',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 4:',
                      'Líneas de tendencia',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 5:',
                      'Soportes y Resistencias',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 6:',
                      'Canales de tendencia',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 7:',
                      'Estructura de impulsos',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 8:',
                      'Técnica de Fibonacci',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 9:',
                      'Análisis del volumen',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 10:',
                      'Indicadores técnicos',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 11:',
                      'Velas Japonesas',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 12:',
                      'Gestión de riesgo',
                      (_con.goToCapituloDosPage),

                    ),
                    TemarioCard(
                      size,
                      'Capitulo 13:',
                      'Psicologia del trading',
                      (_con.goToCapituloDosPage),

                    ),

                    SizedBox(height: 10,)

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
        index: 2,
        onTap: (index){

          debugPrint('actual Index is ${index}');
          if(index == 0){


          }else if(index == 1){
            _con.goToHomePage();

          }else if (index == 2){



          }else if (index == 3){



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





            ],
          ),
        ),
        SizedBox(width: 15,),
        Image.asset('assets/img/portadaBook.png',
          height: 200,)

      ],
    );
  }



  Widget TemarioCard(Size size, String name, String tag,Function ruta1){



    return  Container(


      padding:
      EdgeInsets.symmetric(vertical: 10,horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width-48,
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [BoxShadow(offset: Offset(0,10),
            blurRadius: 33,
            color:Colors.grey)],
      ),
      child: Row(
        children: [
          RichText(text: TextSpan(
              children: [
                TextSpan(
                    text: '${name} \n',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold
                    )
                ),
                TextSpan(
                    text: '${tag}',
                    style: TextStyle(

                      color: Colors.black,
                        fontWeight: FontWeight.bold

                    )
                ),

              ]
          ),

          ),
          Spacer(),
         press(ruta1),
        ],
      ),
    );
  }

  Widget press (Function ruta){

    return  IconButton(
        onPressed:(){
          ruta();

        },



        icon: Icon(Icons.arrow_forward_ios,
          size: 18,));
  }





  }

