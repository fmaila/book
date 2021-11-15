import 'package:book/src/models/stock.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {

  static Future<Database> _openDB() async {

    return openDatabase(join(await getDatabasesPath(),'stocks.db'),
        onCreate: (db, version) {
          return db.execute(



            "CREATE TABLE stocks (id INTEGER PRIMARY KEY, ticker TEXT, name TEXT , price TEXT, tickerRecord TEXT, priceRecordBuy TEXT,priceRecordSell TEXT, numberStock TEXT,dateBuy TEXT,dateSell TEXT,infoBuy TEXT, infoSell TEXT)",
          );
        }, version: 1);
  }

   static Future<int> insert(Stock stock) async {
    Database database = await _openDB();

    return database.insert("stocks", stock.toMap());
  }

  static Future<int> delete(Stock stock) async {
    Database database = await _openDB();

    return database.delete("stocks", where: "id = ?", whereArgs: [stock.id]);
  }

  static Future<int> update(Stock stock) async {
    Database database = await _openDB();

    return database.update("stocks", stock.toMap(), where: "id = ?", whereArgs: [stock.id]);
  }

  static Future<List<Stock>> stocks() async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> stocksMap = await database.query("stocks");

    return List.generate(stocksMap.length,
            (i) => Stock(
            id: stocksMap[i]['id'],
            ticker: stocksMap[i]['ticker'],
            name: stocksMap[i]['name'],
              price: stocksMap[i]['price'],
              tickerRecord:stocksMap[i]['tickerRecord'],
              priceRecordBuy:stocksMap[i]['priceRecordBuy'],
              priceRecordSell:stocksMap[i]['priceRecordSell'],
              numberStock:stocksMap[i]['numberStock'],
            dateBuy:stocksMap[i]['dateBuy'],
            dateSell:stocksMap[i]['dateSell'],
              infoBuy:stocksMap[i][' infoBuy'],
              infoSell:stocksMap[i]['infoSell'],





        ));
  }


}