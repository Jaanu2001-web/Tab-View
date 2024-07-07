import 'package:flutter/material.dart'; 
  
void main() { 
  runApp(MyApp()); 
} 
  
class MyApp extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      title: 'TabView', 
      theme: ThemeData( 
        primarySwatch: Colors.green, 
      ), 
      home: HomePage(), 
    ); 
  } 
} 
  
class HomePage extends StatelessWidget { 
  const HomePage({Key? key}) : super(key: key); 
  @override 
  Widget build(BuildContext context) { 
    return DefaultTabController( 
      length: 3, 
      child: Scaffold( 
        appBar: AppBar( 
          title: Text("TabBar View"), 
          bottom: TabBar( 
            tabs: [ 
              Tab( 
                icon: Icon(Icons.chat), 
                text: "Chats", 
              ), 
              Tab( 
                icon: Icon(Icons.contacts), 
                text: "Contacts", 
              ), 
              Tab( 
                icon: Icon(Icons.settings), 
                text: "Settings", 
              ), 
            ], 
          ), 
        ), 
        body: TabBarView( 
          children: [ 
            Center( 
               child: Icon(Icons.chat), 
            ), 
            Center( 
              child: Icon(Icons.contacts), 
            ), 
            Center( 
              child: Icon(Icons.settings), 
            ) 
          ], 
        ), 
      ), 
    ); 
  } 
} 