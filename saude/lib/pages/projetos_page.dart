import 'package:flutter/material.dart';
import 'package:saude/config/app_colors.dart';
import 'package:saude/config/app_text_style.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetospageState();
}

class _ProjetospageState extends State<ProjetosPage> {
   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Meus Projetos", style: AppTextStyle.titleAppBar),
        ),

body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  child: Column(
  children: [
  Text("Efeito borboleta", style: AppTextStyle.subtitlePage),
  Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.folder_copy, size: 24, color: const Color.fromARGB(255, 250, 152, 5),),
              SizedBox(width: 10,),
              Text("App de Notas", 
              style: AppTextStyle.titleAppBar.copyWith(fontSize: 25),
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