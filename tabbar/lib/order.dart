import "package:flutter/material.dart";

class Order extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: const Column(
        children: [
          Row(
            children: [
              MyCard(icon: Icons.production_quantity_limits_outlined, teks: "Degan Ijo Di order"),
              MyCard(icon: Icons.production_quantity_limits_outlined, teks: "Degan Biasa Di pesan"),
              MyCard(icon: Icons.production_quantity_limits_outlined, teks: "Es Degan Di pesan")
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