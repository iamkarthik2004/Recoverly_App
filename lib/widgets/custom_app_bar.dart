import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Recoverly'),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      leading: Icon(Icons.menu),
      actions: <Widget>[
        Icon(Icons.signal_wifi_4_bar),
        Icon(Icons.battery_full),
      ],
    );
  }
}
