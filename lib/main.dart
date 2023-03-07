import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: Text('Simple ListView Example'),
        ),
        body: SimpleListViewExample(),)
    );
  }
}

class SimpleListViewExample extends StatelessWidget {
  SimpleListViewExample({Key? key}) : super(key: key);
  final months = ['January', 'February', 'March', 'April',
    'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: months.length,
      itemBuilder:  (context, index) {
        return Card(
          child: ListTile(
            title: Text("${index+1} . ${months[index]}"),
          ),
        );
      });
  }
}
