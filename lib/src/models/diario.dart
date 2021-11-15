class Diario {

  int? id;
  String? ticker;
  int? numberStock;
  double? priceOpen;
  double? priceSell;
  String? dateBuy;
  String? dateSell;


  Diario({this.id, this.ticker, this.numberStock, this.priceOpen,this.priceSell,this.dateBuy,this.dateSell});

  Map<String, dynamic> toMap() {
    return { 'id': id, 'ticker': ticker, 'numberStock': numberStock,'priceOpen': priceOpen,'priceSell':priceSell,'dateBuy':dateBuy,'dateSell':dateSell};
  }
}