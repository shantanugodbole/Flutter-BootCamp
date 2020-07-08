//TODO: Add your imports here.
import 'dart:convert';

import 'package:http/http.dart' as http;

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

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD';
const apiKey = ' ECA234DC-9C4B-4397-AEBC-DB4195457BDA';


class CoinData {
  //TODO: Create your getCoinData() method here.
 Future getCoinData() async {
   String rate;
   String url = "$coinAPIURL?apikey=$apiKey";
   http.Response response = await http.get(url);
   if(response.statusCode == 200) {
     final data = json.decode(response.body);
     rate = data['rate'].toStringAsFixed(2);
   }
   else {
     print(response.statusCode);
     throw("Error in API call");
   }
   print("Returned rate");
   print(rate);
   return rate;
 }
}
