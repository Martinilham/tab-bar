import "package:flutter/material.dart";

class Product extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: const Column(
        children: [
          Row(
            children: [
              MyCard(icon: Icons.production_quantity_limits_outlined, teks: "Degan Ijo"),
              MyCard(icon: Icons.production_quantity_limits_outlined, teks: "Degan Biasa"),
              MyCard(icon: Icons.production_quantity_limits_outlined, teks: "Es Degan")
            ],
          )
        ],)
    );
  }
}


class MyCard extends StatelessWidget{
  const MyCard({super.key, required this.icon,required this.teks});

  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left:4.0,
                right:4.0
              )),
            Icon(
              icon,
              size: 50.0,
            ),
            Text(
              teks
            )
          ],
        ),
      )
    );
    
  }
}