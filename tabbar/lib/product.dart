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
            const Image(
              image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.halodoc.com%2Fartikel%2Fini-7-manfaat-konsumsi-daging-buah-kelapa-untuk-buka-puasa&psig=AOvVaw1yf3A6ON0zZukHEP2gI-tS&ust=1710315246437000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCIDEmPma7oQDFQAAAAAdAAAAABAE")),
            Text(
              teks
            )
          ],
        ),
      )
    );
    
  }
}