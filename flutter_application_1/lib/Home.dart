import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';
import 'package:flutter_application_1/shoe.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Material APP',
      home: Scaffold(
       

        drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children:  <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Select one option',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('HOME'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('HOODIES'),
          onTap: (){
          final route = MaterialPageRoute(builder: (context) => const second_screen());
          Navigator.push(context, route);
          },
            
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('SHOES'),
          onTap: (){
          final route = MaterialPageRoute(builder: (context) => const shoe());
          Navigator.push(context, route);
          },
        ),
      ],
    ),
  ),

  /// appbar ///
  appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255) ,
          title: const Text('Chabelo Clothes', style: TextStyle(color: Colors.black),),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
            actions: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.search),color: Colors.black,
                )
              ],


        ),
        body: SingleChildScrollView(child: Center(
          child :Column(children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0,0,0,50),child: Stack(children: [Positioned(child: Image(image: AssetImage('assets/model1.png') ),),]),),

          Stack(children: [Positioned(child: Image(image: AssetImage('assets/model2.png') ),)])],),)
        ),
      )
          
        );

  }



  }




  