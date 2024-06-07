import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( 
      children: [
        Text('eShopX', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
        Spacer(),
      
        Icon(Icons.notifications_active_outlined, size: 30,)
      ],
    );
  }
}