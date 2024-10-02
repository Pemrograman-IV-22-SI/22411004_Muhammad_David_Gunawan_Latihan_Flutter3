import 'package:flutter/material.dart';
import 'package:flutter_application_1/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routName = '/home_page';
 

  @override
  State<HomePage> createState() => _HomePageState();
}
  String nama ='';
  String npm = '';

class _HomePageState extends State<HomePage> {
  
  

  @override
  Widget build(BuildContext context) {

  TextEditingController txtNama = TextEditingController();
  TextEditingController txtNpm = TextEditingController();
  


    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: txtNama,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Masukan Nama',
            ),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16,),
          TextField(
            controller: txtNpm,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Masukan Npm',
            ),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16,),
          Text('nama : $nama\n npm : $npm'),
          const SizedBox(height: 16,),
          ElevatedButton(onPressed: () {
            print(txtNama.text);
            print(txtNpm.text);
            setState(() {
              nama = txtNama.text;
              npm  = txtNpm.text;
              Navigator.pushNamed(context,Page2.routeName,
              arguments: {'npm':npm , 'nama': nama});
              });
            
          },  child:  const Text('Button')),
        ],
      ),
    ),  
    );
  }
}