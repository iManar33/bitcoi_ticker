// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'coin_data.dart';
//
// class PlatformPicker {
//   String selectedCurrency = 'USD';
//   int selectedCurrencyIndex = 0;
//   DropdownButton<String> androidPicker() {
//     List<DropdownMenuItem<String>> dropdownItems = [];
//     for (String currency in currenciesList) {
//       var newValue = DropdownMenuItem(
//         value: currency,
//         child: Text(currency),
//       );
//       dropdownItems.add(newValue);
//     }
//     return DropdownButton<String>(
//       value: selectedCurrency,
//       items: dropdownItems,
//       onChanged: (value) {
//         setState(() {
//           selectedCurrency = value!;
//         });
//       },
//     );
//   }
//   CupertinoPicker iOSPicker (){
//     List<Text> pickerItems = [];
//     for (String currency in currenciesList) {
//       pickerItems.add(Text(currency));
//     }
//     return CupertinoPicker(
//       backgroundColor: Colors.lightBlue,
//       itemExtent: 32.5,
//       onSelectedItemChanged: (selectedIndex) {
//         selectedCurrencyIndex = selectedIndex;
//       },
//       children: pickerItems,
//     );
//   }
// }