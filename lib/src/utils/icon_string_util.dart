import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'view_quilt': Icons.view_quilt,
  'input': Icons.input
};

Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.purple[300]);
}
