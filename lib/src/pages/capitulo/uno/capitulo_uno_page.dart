import 'dart:math';



import 'package:book/src/models/capitulo_uno.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'capitulo_uno_controller.dart';



class CapituloUnoPage extends StatefulWidget {
  const CapituloUnoPage({Key? key}) : super(key: key);

  @override
  _CapituloUnoPageState createState() => _CapituloUnoPageState();
}

class _CapituloUnoPageState extends State<CapituloUnoPage> {

  CapituloUnoController _con=new CapituloUnoController();
  final _controller = PageController();
  final _notifierScroll = ValueNotifier(0.0);


  void _listener(){

    _notifierScroll.value = _controller.page!;
  }

  @override
  void initState(){
    _controller.addListener(_listener);
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }
  @override
  void dispose(){
    _controller.addListener(_listener);
    _controller.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final bookHeight = size.height*0.74;
    final bookWidth = size.width;


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

      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(bookAppBackground,
                fit: BoxFit.fill,)

          ),



          ValueListenableBuilder<double>(
              valueListenable: _notifierScroll,
              builder: (context, value,_) {
                return PageView.builder(
                  itemCount: capitulo_uno.length,
                  controller:_controller,
                  itemBuilder: (context,index){
                    final contenido=capitulo_uno[index];
                    final percentage = index - value;
                    print(percentage);
                    final rotation = percentage.clamp(0.0,1.0);
                    final fixRotation = pow(rotation,0.35);


                    return Padding(

                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(

                                  height:bookHeight,
                                  width:bookWidth,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color:Colors.black26,
                                          blurRadius: 10,
                                          offset: Offset(5.0,5.0),
                                          spreadRadius: 10,
                                        )
                                      ]
                                  )
                              ),



                              Transform(
                                  alignment: Alignment.centerRight,
                                  transform: Matrix4.identity()
                                    ..setEntry(3,2,0.002)
                                    ..rotateY(1.8*fixRotation)
                                    ..translate(rotation * size.width *0.8)
                                    ..scale(1+rotation),
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0,right: 20,top: 10),
                                    child: Column(

                                        children:[
                                          Row(

                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(

                                                contenido.capitulo!,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.blueGrey,
                                                    fontWeight: FontWeight.w600
                                                ),



                                              ),

                                              Text('Página ${1+index}/${capitulo_uno.length} ',style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.blueGrey
                                              ),)

                                            ],
                                          ),
                                          Divider(
                                            color: Colors.black26,thickness: 2,
                                          ),

                                          Text(
                                            contenido.titulo!,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600
                                            ),
                                            textAlign: TextAlign.start,

                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                            contenido.contenido!,
                                            style: TextStyle(
                                                fontSize: 12
                                            ),
                                            textAlign: TextAlign.justify,

                                          ),
                                          SizedBox(height: 10),
                                          contenido.imagen == ''? Text(''):
                                          Image.asset(
                                              contenido.imagen!,
                                              fit: BoxFit.fill,
                                              height:size.height*0.3,
                                              width:size.width*0.8
                                          )


                                        ]

                                    ),
                                  )


                              ),
                            ],
                          ),





                        ],
                      ),
                    );
                  },

                );
              }
          ),


        ],
      ),

    );
  }
}