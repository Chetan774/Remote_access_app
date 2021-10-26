import 'package:flutter/material.dart';
import 'package:remote_app/mouse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote Control',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Remote Access App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.grey[700],
              child: Center(
                  child: Text(
                'How to use',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ],
        ),
      ),
      body: Center(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Mouse(),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(20),
                      //  hoverColor: Colors.indigoAccent[200],
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.center,
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.indigoAccent,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mouse',
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(height: 60),
                    SizedBox(height: 60),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (BuildContext context) => keyboard(),
                        //   ),
                        // );
                      },
                      borderRadius: BorderRadius.circular(20),
                      //  hoverColor: Colors.indigoAccent[200],
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.center,
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.indigoAccent,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Keyboard',
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(height: 60),
                  ],
                ),
              ))),
    );
  }
}
