import 'package:flutter/material.dart';
import 'package:oracle/home.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              image: NetworkImage('https://cdn.pixabay.com/photo/2016/05/25/19/45/tower-1415723_960_720.jpg'),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 20, left: 20,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.purple,
                      Colors.blue,
                      Colors.white,
                      Colors.red,
                      Colors.yellow,
                      Colors.black
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text('25 Amazing colorful photography',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 35,
                    ),
                    ),
                    Row(
                      children: [
                        ActionChip(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                          },
                          label: Text('Photography',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white
                          ),),
                          backgroundColor: Colors.red,

                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ActionChip(
                          onPressed: (){},
                          label: Text('Colors',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white
                          ),),
                          backgroundColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
