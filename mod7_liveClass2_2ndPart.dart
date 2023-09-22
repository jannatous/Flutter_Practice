import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
         title:Text('Product list'),
       ),
      body: Column(
        children: [
          ElevatedButton(onPressed:() {
            showDialog(context: context , builder: (context){
              return AlertDialog(
                title: Text('Congrasulation'),
                content: Text('You are in danger'),
                actions: [
                  TextButton(onPressed: () {}, child: Text('ok'))
                ],
              );
            });
          } , child: Text('Buy Now'),),
        ],
      ),

    );
  }
}
