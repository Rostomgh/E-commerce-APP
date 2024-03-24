import 'package:flutter/material.dart';

class PGOne extends StatefulWidget {
  const PGOne({super.key});

  @override
  State<PGOne> createState() => _PGOneState();
}

class _PGOneState extends State<PGOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 10,
        title: Text("CURVE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
          Padding(
            padding: const EdgeInsets.only(left:9),
            child: Text('2',style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.w800),),
          )
        ],
        
      ),
      
    );
  }
}