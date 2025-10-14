import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerlogin = TextEditingController();
  TextEditingController controllersenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),

body: Padding(
  padding: const EdgeInsets.only(left: 30, top: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
    children: [
      Icon(Icons.account_circle, size: 24, ),
      Text("Nome:", style: TextStyle(fontWeight: FontWeight.bold),),
    ],
    ),
      Text("pirata"),
      Row(
    children: [
      Icon(Icons.email, size: 24, ),  
      Text("Email:", style: TextStyle(fontWeight: FontWeight.bold),),
      Text("pirata@gmail"),
      ],
      ),
      SizedBox(height: 20,),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.limeAccent, 
          ),
        height: 250,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text (
                textAlign: TextAlign.justify,
                          """Lorem ipsum dolor sit amet, consectetur adipiscing elit
                        Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                        Nisi ut aliquip ex ea commodo consequat duis aute irure dolor
                        In reprehenderit in voluptate velit esse cillum dolore eu fugiat
                        Nulla pariatur excepteur sint occaecat cupidatat non proident.\n
                        Sunt in culpa qui officia deserunt mollit anim id est laborum
                        Curabitur pretium tincidunt lacus nulla gravida orci a odio
                        Nullam varius, turpis et commodo pharetra est eros bibendum elit
                        Donec non enim in turpis pulvinar facilisis ut felis"""
                          ),
            ),
           ),
        ),
        SizedBox(height: 30),
        TextField(
          controller: controllerlogin,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Digite seu login',
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: false,
          controller: controllersenha,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Digite seu senha',
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 350,
          height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.limeAccent),),
          onPressed: () {
            print("""login: ${controllerlogin.text} 
            senha: ${controllersenha.text}""");
          }, 
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.login, size: 24, ),
              SizedBox(width: 10),
              Text("realizar login" ),
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