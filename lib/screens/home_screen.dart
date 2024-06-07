import 'package:flutter/material.dart';
import 'package:rest_api/components/homescreen_header.dart';
import 'package:rest_api/view/main_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 50,),
              HomeScreenHeader(),
              SizedBox(height: 40,),
              MainProduct(),
            ],
          ),
        ),
      ),
    );
  }
}