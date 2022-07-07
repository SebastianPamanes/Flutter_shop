


import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/second_screen.dart';
import 'package:flutter_application_1/shoe.dart';

class shoe extends StatelessWidget {
  const shoe({Key? key}) : super(key: key);
  
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
          title: const Text('SHOES', style: TextStyle(color: Colors.black),),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
        children:<Widget>[ Padding(padding: EdgeInsets.fromLTRB(0, 20, 20, 0,),child: Container(

          child: const Image(image: AssetImage('assets/Banner.png')))),
        Row(
         children:<Widget>[Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
         children: const <Widget> [Text('8',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
         
         Text('9',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
         Text('10 size',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
         Text('11',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
         Text('12',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
         Text('13',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
         Text('*Suela de Caucho'),
         Text('*Contenido dinámico:'),
         Text('Comodidad transpirable:'),
         Text('El eje mide aproximadamente low-top desde el arco'),
         
         ] )],)

        
        ])
        
    ));
       
        
        
        
        
      


       
  

      
  }
  }
