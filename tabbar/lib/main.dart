import "package:flutter/material.dart";

import './product.dart' as pd;
import './home.dart' as hm;
import './order.dart' as or;
import './profil.dart' as pf;

void main(){
  runApp( const MaterialApp(
    title:"Belajar Tab-bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  late TabController controller;

  @override
  void initState(){
    controller = TabController( vsync: this,length: 4 );
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.food_bank_outlined),
        title: const Text("Toko Degan"),
        backgroundColor: Colors.greenAccent[400],
      ),
      body: TabBarView(
        controller: controller,
        children: [
          hm.Home(),
          pd.Product(),
          or.Order(),
          pf.Profil()
        ]),
      bottomNavigationBar:TabBar(
        controller: controller,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
           Tab(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            text: "Order",
          ), Tab(
            icon: Icon(Icons.production_quantity_limits_sharp),
            text: "Product",
          ), Tab(
            icon: Icon(Icons.person),
            text: "Profil",
          )
        ]
        ),
    );
  }
}