import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   home: Scaffold(
            appBar: AppBar(
              title: Row(
                children: [Container(width:300,height:70,child:Image.asset("images/r.jpg"),)],
              ),
            ),
            body: Column(
              children: [
               Container(
                  width: 600,
                  height: 300,decoration: BoxDecoration(color: Colors.blue.shade800),
                  child: ListView.builder(
                    itemCount:usser.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(children: [
                                Container(height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  image: DecorationImage(image:AssetImage(usser[index].rasm) ,fit: BoxFit.fill)),
                                ),
                                Column(children: [
                                  Text(usser[index].name),
                                  Text(usser[index].xabar)
                                ],)
                              ],),
                            )
                            ],
                        );
                      }),
                )
              ],
            ))
     
    );
  }
}

class User {
  final String name;
  final String xabar;
  final String rasm;

  User(this.name, this.xabar, this.rasm);
}

List usser = [
  User('sardor', 'salom qandaysan', 'images/r.jpg'),
  User('Azimbek', 'yee', 'images/r.jpg'),
  User('Behruz', 'salom ', 'images/r.jpg'),
  User('husniddin', 'qattasan', 'images/r.jpg'),
  User('хумойунмирзо', '...', 'images/r.jpg'),


];
