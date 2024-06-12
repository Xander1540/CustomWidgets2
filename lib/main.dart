import 'package:custom_splitting_into_files/ui_helper/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('Custom App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(btnName: 'Play', icon: Icon(Icons.play_arrow), callBack: (){
                print('Played!');
              }, textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnName: 'Pause',
                icon: Icon(Icons.pause),
                callBack: (){
                  print('Paused!');
                },
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                bgColor: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
   );
  }
}
