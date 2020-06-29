

import 'package:flutter/material.dart';

final icons = <String, IconData>{
'add_alert' : Icons.add_alert, 
'accessibility' : Icons.accessibility,
'folder_open' : Icons.folder_open,
'donut_large' : Icons.donut_large,
'input'       : Icons.input

};

Icon getIcon(String nombreIcono){
  return Icon(icons[nombreIcono], color: Colors.blue,);

}