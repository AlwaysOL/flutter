import 'package:flutter/material.dart';

class NavigationView{
  final BottomNavigationBarItem item;
  final AnimationController controller;

  NavigationView( {Widget icon, Widget title, TickerProvider vsync}):
      item = BottomNavigationBarItem(
          icon: icon,
          title: title,
      ),
      controller = AnimationController(
          duration: kThemeAnimationDuration,
          vsync: vsync,
      );


}