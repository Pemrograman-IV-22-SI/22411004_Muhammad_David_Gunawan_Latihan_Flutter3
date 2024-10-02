import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  static const routeName = '/page2';


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    // ignore: unused_local_variable
    String npm = args['npm'];
    // ignore: unused_local_variable
    String nama = args['nama'];
    return const Scaffold(
      body: Center(
        child: Column(children: [
          Text('Data mahasiswa'),
          SizedBox(height: 10,),
          Text('NPM'),
          SizedBox(height: 10,),
          Text('NAMA'),
          SizedBox(height: 10,),
        ],)),
    );
  }
}