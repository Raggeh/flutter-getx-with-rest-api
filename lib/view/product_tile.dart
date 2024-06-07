import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/controller/product_controller.dart';
import 'package:rest_api/model/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
   ProductTile({super.key , required this.product});


  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(top: 5, right: 5, bottom: 10),
          height: 300,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3)),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Row of favorite and Discount
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  '-50%',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

             // Product Image 'https://www.freepnglogos.com/uploads/shoes-png/dance-shoes-png-transparent-dance-shoes-images-5.png'
              Image.network(
                product.image,
                height: 160,
                width: 180,
              ),

              

              //Produt Name
              Text(
                product.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Best Men Fashion Shoes',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Text(
                      product.price.toString(),
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                 
                  Spacer(),
                  Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        );
  }
}
