import 'package:flutter/material.dart';
import 'package:mobileflutter/component/main_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({Key ? key}): super (key:key);
  @override
  Widget build ( BuildContext context){
    return SafeArea(
        child: Column(
          children: [
           MainHeader(),
          ],
        )
    );
  }
}