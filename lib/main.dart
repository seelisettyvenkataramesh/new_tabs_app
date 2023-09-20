import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Demo'),
                bottom: TabBar(
              tabs: [
                Tab(
              icon: Icon(Icons.car_crash),
          ),
        Tab(
          icon: Icon(Icons.directions_transit),
        ),
        Tab(
          icon: Icon(Icons.bus_alert),
        ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                ),
                Tab(
                  icon: Icon(Icons.accessibility),
                ),
            ],
          ),

          ),
          body: TabBarView(
            children: [
              Icon(Icons.car_crash),
              Icon(Icons.bus_alert),
              Icon(Icons.directions_transit),
              Icon(Icons.access_alarm),
              Icon(Icons.accessibility)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                    child: Text('Drawer Header')),

                ListTile(
                  title: Text('Home'),
                ),
                ListTile(
                  title: Text('Car'),
                ),
                ListTile(
                  title: Text('dirction'),
                ),
                ListTile(
                  title:Text('accessibility') ,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}