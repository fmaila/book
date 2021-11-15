import 'package:meta/meta.dart';

class CapituloDos{



  CapituloDos({

    this.capitulo,
    this.titulo,
    this.contenido,
    this.imagen,

  });

  String? capitulo;
  String? titulo;
  String? contenido;
  String? imagen;

}

const _bookAppAsset = 'assets/img';
final bookAppBackground='$_bookAppAsset/Bg.png';

final capitulo_dos = [

  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo:'Plataformas tecnológicas',
    contenido: '''
    En la actualidad y con el avance de la tecnológia se tiene acceso a los diferentes mercados de valores del mundo,  esto a través de una conexion a internet y con una cuenta en un "Broker"
    ''',
    imagen: '$_bookAppAsset/fig-cap2-1.png',
  ),
  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: '¿Qué es un Broker?',
    contenido: '''
    
    Es un agente o empresas que se encargan de ejecutar las operaciones de compra o venta de instrumentos financieros que sus clientes lo solicitan, por ejemplo: divisas,acciones, índices bursátiles, entre otros.
    
    Actua como intermediario entre sus clientes y el mercado encontrando un vendedor cuando su cliente le da una orden de compra o un comprador cuando su cliente le da una orden de venta
    
    
    
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',
  ),
  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: 'Cómo elegir un Bróker',
    contenido: '''
    
    El factor fundamental para elegir un bróker online es que se trate de una compañia fiable, seria, transparente y profesional, debido que va ser el encargado de recibir nuestro dinero y de ejecutar con el las operaciones que le solicitemos
    
    Deben estar debidamente regulados por organizaciones de prestigio norteamericanas como la FINRA, OCC, SEC CFTC y la NFA, y cualquier otro órgano regulador que permita operaciones en EEUU.
    
    Existen varios bróker regularizados, por ejemplo:
    
    * Interactive Bróker
    * TD Ameritrade
    * Tastyworks
    * Etc.
    
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',
  ),
  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: 'Características a tomar encuenta al elegir un bróker online',
    contenido: '''
    Entre otras cosas se debe hacer enfasis en los siguientes puntos:
    
    * Si el bróker esta disponible para su país
    * Comisiones por transacción
    * Atención al cliente
    * Depósito mínimo
    * Cargos adicionales
    * Diversidad de formas para invertir
    * Impuesto
    * Métodos de pago y retiros
    * Herramientas de trading
  
   
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',
  ),
  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: 'Tipos de cuentas en un bróker',
    contenido: '''
    
    Los brokér permiten abrir cuentas reales y cuentas demo
    
    * Cuenta Real
    
      Efectivo:
      
      - Solo se puede operar con el efectivo que se dispone en la cuenta
      - No pemite ventas en corto
      - Puedo perder máximo el capital de la cuenta
      
      Margen:
    
      - Se puede operar con el capital que se dispone más un préstamo del bróker
      - Si permite ventas en corto
      - Se puede perder más del capital de la cuenta
      
     * Cuenta Demo
     
     - Es un manera de invertir en la bolsa de valores con dinero virtual y con datos reales del mercado
     - Los bróker online por lo general ofrecen una cuenta demo, a fín que los usuarios se familiaricen con su plataforma y se combiertan en posibles clientes de una cuenta real. 
       
    
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',

  ),

  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: 'Herramientas de análisis técnico',
    contenido: '''
    
    Existen muchas herramientas para realizar el análisis técnico, unas son free y otras de pago, muchas de estas se diferencian por la presentación de la información en tiempo real
    
    El uso de determianda herramienta dependerá de los parámetros y características que el analista vaya a utilizar en el análisis
    
    Ejemplo:
    
    * Yahoo! Finanzas
    * TradingView
    * TC2000
    * Entre otras
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',

  ),
  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: 'Práctica',
    contenido: '''
    
    Abrir una cuenta demo en el broker:
    
    Para fines educativos abriremos una cuenta demo en el bróker: Interactive Broker
    
    https://www.interactivebrokers.co.uk/Universal/Application?ft=T&locale=es_ES
       
    ''',
    imagen: '$_bookAppAsset/fig-cap2-2.png',

  ),
  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: 'Práctica',
    contenido: '''
    
    Abrir una cuenta free en Revisión del Dow Jones:
    
    El indice es un termómetro del mercado, si el indice sube podría asumirse que el mercado va bien.
    
    ''',
    imagen: '$_bookAppAsset/fig-cap1-5.png',

  ),
  CapituloDos(
    capitulo: 'Capítulo Dos',
    titulo: 'Lecciones aprendidas',
    contenido: '''
    
    Para realizar inversiones es importante dar seguimiento a cada uno de los indices, ya que las empresas por lo general siguen al comportamiento del indice del segmento al cual pertenecenen.
    
    Si vamos a invertir en una empresa de tecnología seria importante revisar como esta el indice NASDAQ, si tiene una tendencia alcista o bajista.
    
    Se ampliara este tema en los siguientes capítulos.
    ''',
    // imagen: '$_bookAppAsset/fig-cap1-5.png',
    imagen: '',

  ),
];