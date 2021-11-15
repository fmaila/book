import 'package:meta/meta.dart';

class CapituloUno{



  CapituloUno({

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

final capitulo_uno = [

  CapituloUno(
    capitulo: 'Capítulo Uno',
    titulo:'El mercado financiero',
    contenido: '''
    Se puede definir con un sistema en el cual actores de diferentes países del mundo comercializan instrumentos financieros (divisas, acciones, derivados,bonos, etc.).
    
    Entre los actores están empresas e inversionistas de varias nacionalidades, mismos que participan en la compra y venta de los intrumentos financieros.
    ''',
    imagen: '$_bookAppAsset/fig-cap1-1.png',
  ),
  CapituloUno(
    capitulo: 'Capítulo Uno',
    titulo: 'Subgrupo de los mercados financieros',
    contenido: '''
    
    A continuación se presenta un  breve resumen de los más conocidos:
    
    Mercado de divisas: 
    
    Transaccionan monedas de distinta denominación. Ejemplo cambiar dolares por euros, a un precio denominado tipo de cambio.
    
    Mercados bursátiles:
    
    Es un sistema alternativo al sistema bancario, donde empresas que están en crecimiento o tienen proyectos por ejecutar buscan financimamiento.
    
    Es decir dichas empresas ceden un porcentaje de su empresa a cambio del aporte de los inversionistas.
    
    Mercado de derivados:
    
    Transaccionan derivados financieros, el precio de estos intrumentos depende del desempeño de un activo subyacente, como pueden ser las acciones de una empresa.
    
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',
  ),
  CapituloUno(
    capitulo: 'Capítulo Uno',
    titulo: 'Bolsa de valores de EEUU',
    contenido: '''
    
    Existen varias bolsas de valores en Estados Unidos, sin embargo se hace enfasis en las pricipales y que son de nuestro interes.
    
    NYSE (New York Stock Exchange):
    
    Uno de los más grandes mercados de valores del mundo en volumen monetario, en este mercado se transaccionan billones de dolares anuales, e incluye compañias de todo el mundo.
    
    NASDAQ (National Association of Securities Dealers Automated Quotation)
    
    El segundo mercado de valores de Estados Unidos, donde se encuentran las empresas de alta tecnología.
    
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',
  ),
  CapituloUno(
    capitulo: 'Capítulo uno',
    titulo: 'Indice bursatil',
    contenido: '''
    El indice bursatil es un indicador de un mercado en especifico, el cual esta compuesto por un determinado número de empresas.
    
    S&P 500:
    
    Es el indice mas representativo del mundo, contituido por 500 empresas, mismas que son las mas importantes de la economia americana.
    
    NASDAQ 100:
    
    Contituido por las 100 empresas tecnológicas más importantes del mercado tecnológico.
    
    DOW JONES
    
    Contituido por las 30 empresas de mayor capitalizaciòn bursátil de la bolsa de valore sde New York.
   
    ''',
    //imagen: '$_bookAppAsset/book2.jpg',
    imagen: '',
  ),
  CapituloUno(
    capitulo: 'Capítulo uno',
    titulo: 'Práctica',
    contenido: '''
    
    Revisión de los mercados e indices bursátiles de EEUU
    
    Estos datos lo podemos revisar en diferentes paginas web que proveen esta informaciòn, para fines educativos aremos uso de la información porvista por investing.com
   
    https://es.investing.com/markets/united-states
    ''',
    imagen: '$_bookAppAsset/fig-cap1-2.png',

  ),

  CapituloUno(
    capitulo: 'Capítulo uno',
    titulo: 'Práctica',
    contenido: '''
    
    Revisión del S&P 500:
    
    El indice es un termómetro del mercado, si el indice sube podría asumirse que el mercado va bien.
    
    ''',
    imagen: '$_bookAppAsset/fig-cap1-3.png',

  ),
  CapituloUno(
    capitulo: 'Capítulo uno',
    titulo: 'Práctica',
    contenido: '''
    
    Revisión del NASDAQ 100:
    
    El indice es un termómetro del mercado, si el indice sube podría asumirse que el mercado va bien.
    
    ''',
    imagen: '$_bookAppAsset/fig-cap1-4.png',

  ),
  CapituloUno(
    capitulo: 'Capítulo uno',
    titulo: 'Práctica',
    contenido: '''
    
    Revisión del Dow Jones:
    
    El indice es un termómetro del mercado, si el indice sube podría asumirse que el mercado va bien.
    
    ''',
    imagen: '$_bookAppAsset/fig-cap1-5.png',

  ),
  CapituloUno(
    capitulo: 'Capítulo uno',
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