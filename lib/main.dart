import 'package:flutter/material.dart';
 
// void main() {
//   runApp(MyApp());
// }
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
   // TODO: implement createState
   return _MyAppState();
 }
}
 
class _MyAppState extends State<MyApp> {
 var _questionIndex = 0;
 
 void _answerQuestion() {
   setState(() {
     _questionIndex = _questionIndex + 1;
   });
   print(_questionIndex);
 }
 
 @override
 Widget build(BuildContext context) {
   var questions = [
     'Apa warna favorit anda?',
     'apa peliharaan favorit anda?',
   ];
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Aplikasi quiz'),
       ),
       body: Column(
         children: [
           Text(
             questions[_questionIndex],
           ),
           RaisedButton(
             child: Text('jawab 1'),
             onPressed: _answerQuestion,
           ),
           RaisedButton(
             child: Text('jawab 2'),
             onPressed: () => print('jawab 2 dipilih!'),
           ),
           RaisedButton(
             child: Text('jawab 3'),
             onPressed: () {
               print('jawab 3 dipilih');
             },
           ),
         ],
       ),
     ),
   );
 }
}
 
