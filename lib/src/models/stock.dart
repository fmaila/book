class Stock {

  int? id;
  String? ticker;
  String? name;
  String? price;
  String? tickerRecord;
  String? priceRecordBuy;
  String? priceRecordSell;
  String? numberStock;
  String? dateBuy;
  String? dateSell;
  String? infoBuy;
  String? infoSell;




  Stock({
    this.id,
    this.ticker,
    this.name,
    this.price,

    this.tickerRecord,
    this.priceRecordBuy,
    this.priceRecordSell,
    this.dateBuy,
    this.dateSell,
    this.infoBuy,
    this.infoSell,
    this.numberStock
  }
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ticker': ticker,
      'name': name,
      'price': price,

      'tickerRecord':tickerRecord,
      'priceRecordBuy':priceRecordBuy,
    'priceRecordSell':priceRecordSell,
      'numberStock':numberStock,
      'dateBuy':dateBuy,
      'dateSell':dateSell,
      'infoBuy':infoBuy,
      'infoSell':infoSell};
  }
}