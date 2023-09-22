import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return CupertinoApp(
      home: Home(),
    );
  }
  }

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context){
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home page'),
        trailing: CupertinoSwitch(
          onChanged: (bool onChange){

          },value: true,
        ),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Jannat'),
              Text('Jannat'),
              Text('Jannat'),
              Text('Jannat'),
              Text('Jannat'),
              Text('Jannat'),
              CupertinoButton.filled(child: Text('Click'), onPressed: () {}),
              CupertinoTextField(),
             CupertinoTabBar(items: [
               BottomNavigationBarItem(label:'std',icon: Icon(CupertinoIcons.home)),
               BottomNavigationBarItem(label:'std',icon: Icon(CupertinoIcons.home)),
             ])

            ],
          )
        )
    );
  }
}


