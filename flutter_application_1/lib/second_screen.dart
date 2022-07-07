
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/shoe.dart';

class second_screen extends StatelessWidget {
  const second_screen({Key? key}) : super(key: key);
  
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
          onTap: (){
          final route = MaterialPageRoute(builder: (context) => const Home());
          Navigator.push(context, route);
          },
          
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
          title: const Text('Hoodies', style: TextStyle(color: Colors.black),),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
            actions: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.search),color: Colors.black,
                )
              ],


        ),
        body: 
        GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      
      child: Image(image: AssetImage('assets/tokyo.png')),
    ),
    Container(
      padding: const EdgeInsets.all(1),
     
      child: Image(image: AssetImage('assets/pizza.png')),
    ),
    Container(
      padding: const EdgeInsets.all(1),
      
      child: Image(image: AssetImage('assets/xd.png')),
    ),
    Container(
      padding: const EdgeInsets.all(1),
      
      child: Image(image: AssetImage('assets/sus.png')),
      
    ),
    
  ],
)
      )
          
        );

  }



  }
