//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';

class DropDownTypes{
  String selectedCurrency = "USD";

  //......Dropdown for Android.......
  DropdownButton<String> getAndroidDropdown(){
    List<DropdownMenuItem<String>> dropdownItems = [];
    for(String currency in currenciesList){
      var newItem = DropdownMenuItem(
        value: currency,
        child: Text(currency),
      );
      dropdownItems.add(newItem);
      // return DropdownMenuItem(value: currenciesList[i],child: Text("USD"),);
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropdownItems,
      onChanged: (value){
        setState(() {
          selectedCurrency = value!;
        });
      },
    );
  }

  //..........Dropdown for iOS...........
  CupertinoPicker getIosDropdown(){
    List<Text> pickerItems = [];
    for(String currency in currenciesList){
      var newItem = Text(currency);
      pickerItems.add(newItem);
      // return DropdownMenuItem(value: currenciesList[i],child: Text("USD"),);
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex){
        print(selectedIndex);
      },
      children: pickerItems,
    );
  }

  void setState(Null Function() param0) {}
}