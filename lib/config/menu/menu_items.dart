import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });

}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Buttons', 
    subTitle: 'Any buttons on Flutter', 
    link:'/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Cards', 
    subTitle: 'Styled container', 
    link:'/cards', 
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'ProgressIndicators', 
    subTitle: 'Generals and controlled', 
    link:'/progress', 
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Snackbar and dialogs', 
    subTitle: 'Screen indicators', 
    link:'/snackbar', 
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated container', 
    subTitle: 'Statful widget anminated', 
    link:'/animated', 
    icon: Icons.check_box_outline_blank_sharp
  ),

  MenuItem(
    title: 'UI Controls', 
    subTitle: 'Flutter Series Controls', 
    link:'/ui-constrols', 
    icon: Icons.car_rental_outlined
  ),

  MenuItem(
    title: 'App Introduction', 
    subTitle: 'Short App Tutorial', 
    link:'/tutorial', 
    icon: Icons.accessible_rounded
  ),

  MenuItem(
    title: 'UI Controls', 
    subTitle: 'App Tutorial', 
    link:'/ui-constrols', 
    icon: Icons.car_rental_outlined
  ),
];