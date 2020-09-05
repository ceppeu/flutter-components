import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};

Icon getIcon(String iconName) {
  print('ICON NAME $iconName');
  return Icon(_icons[iconName], color: Colors.purple[300]);
}
