// ignore_for_file: prefer_const_constructors, unused_import

import 'dart:math';
import 'package:flutter/material.dart';

class MyFrases extends StatefulWidget {
  const MyFrases({super.key});

  @override
  State<MyFrases> createState() => _MyFrasesState();
}

class _MyFrasesState extends State<MyFrases> {

  int numeroAleatorio = 0;
  String frasedodia = " ";
  List<String> frases = ['O sucesso é a soma de pequenos esforços repetidos dia após dia.', 'Acredite em você mesmo e tudo será possível.', 'Quanto maior o obstáculo, maior a glória em superá-lo.', 'O que você faz hoje pode melhorar todos os seus amanhãs.', 'O segredo para ficar à frente é começar.','A jornada de mil milhas começa com um único passo.','Você é mais forte do que pensa e será mais bem-sucedido do que imagina.', 'Nada é impossível, a palavra em si diz "eu sou possível"!','Não deixe para amanhã o que você pode fazer hoje.', 'Lembre-se: o seu único limite é você mesmo.'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 155, 57, 57),
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 30,),
        Image.network("https://pbs.twimg.com/media/FcN94n0XEAA4GHH.jpg", width: 300,),
        SizedBox(height: 30,),
        Padding(padding: EdgeInsets.all(15),
          child: Text(frasedodia, style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),),
        SizedBox(height: 100,),
        ElevatedButton(onPressed: (){
          mostrarFrase();
          setState(() {
            
          });
         },
         style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 155, 57, 57),
          elevation: 10,
          shadowColor: Color.fromARGB(162, 126, 47, 47),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
         ),
         child: Text("Nova Frase", style: TextStyle(color: Colors.white),)),
      ],)),
    );
  }

  void mostrarFrase(){
    frasedodia = "";
    numeroAleatorio = Random().nextInt(10);
    frasedodia = frases[numeroAleatorio];
  }
}