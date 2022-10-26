import 'dart:convert';
import 'package:http/http.dart' as http;
const String coinapi = 'rest.coinapi.io';
const String apiKey = '6AA7B9F5-B268-411B-949C-70F06F6BE8CD';
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData (String selectedCurrency) async{
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      print(crypto);
      var url = Uri.https(coinapi, '/v1/exchangerate/$crypto/$selectedCurrency', {
        // 'asset_id_quote': selectedCurrency,
        'apikey': apiKey,
      });
      print(url);

      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        // print(response.body);
        var decodedData = jsonDecode(response.body);
        double lastPrice = decodedData['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      }
      else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }

}
