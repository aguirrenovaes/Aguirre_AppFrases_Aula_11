  import 'package:flutter/material.dart';
  import 'dart:math';
  //inicio do app de frases aleatorias, utilizando um array de frases

  void main(){
    runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases para Academia',

      home: Frases(),
    ));
  }

  class Frases extends StatefulWidget {
    const Frases({Key? key}) : super(key: key);

    @override
    State<Frases> createState() => _FrasesState();
  }

  class _FrasesState extends State<Frases> {

    //inicio do back
    //criar um array de frases para serem exibidas de forma aleatória

    var _frases = [
      'O peso mais difícil que eu levanto, é o de levantar da cama -Thais Carla',
      'A rua para o fracasso é pavimentada com desculpas. -Mark Bell',
      'Bumbum bonito é bumbum durinho, por isso o meu é assim. -Dono da Academia',
      'Disciplina é fazer algo que você odeia, mas mesmo assim o faz como se estivesse adorando. -Mike Tyson',
      'Força não vem da capacidade física. Ela vem de uma vontade indomável. -Mahatma Gandhi',
      'Se torne a onça que o Serjão Berranteiro teria medo de matar. -Personal Trainer',
      'Não se preocupe com os fracassos, se preocupe com as chances que você perdeu quando nem tentou. -Ulisses Jr.',
      'Às vezes bate uma vontade de ir à academia, daí eu sento, lembro das dores e passa. -Calistenico',
      'Se for pra desistir desista de ser fraco. -Maromba da Academia',
      'Fique orgulhoso do seu bumbum, mas nunca satisfeito. -Dono da Academia',
      'Estás truaiste? não faça iaisso. Independuainte de qualquer coisa na vuaida, Suroaya. -ReiDoKuduro',
      'MASQUEEEEEICOOOO, TOMA A BANUINA MASQUEICO OLHA SÓÓ, ESTÁ COM O BESBÊ DELE AINDA -ReiDoKuduro',
      'Podem falar mal de mim. Quando a bunda estiver na nuca, saberão do meu esforço -Tanajura',
      'Meu exercício favorito na academia provavelmente seria julgar. -Bundudo'

    ];

    var _FrasesGerada = 'Frases Motivacionais para ter 40cm de Braço';//o texto depois da imagem da logo, para chamar a função

    void _gerarFrase(){//função de gerar a frase aleatória
      //número sorteado irá pegar aleatóriamente de 0,1,2,3,4 das frases do array

      var numeroSorteado = Random().nextInt(_frases.length);
      //random é um importe do dart:math
      //sendo responsável para exibir o array de forma aleatória
      setState(() {
        _FrasesGerada = _frases[numeroSorteado];
      });
    }

    //fim do back

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFF1a303e),
        appBar: AppBar(
          title: const Text('Frases para Academia'),
          backgroundColor: Colors.black45, //cor do appbar
        ),
        body: Center(//centralizar o body

          child: Container(
            padding: const EdgeInsets.all(12),//espaçamento do appbar para o body
            child: Column(//Verticalizar os elementos
              mainAxisAlignment: MainAxisAlignment.spaceAround, //spacearound = entre os espaços
              crossAxisAlignment: CrossAxisAlignment.center, //centralizar o espaçamento
              children: <Widget>[
                Image.asset("image/bumb.png"),
                Text( _FrasesGerada ,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
                 ElevatedButton(//botao para gerar frases
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0xFF27676e))
                    ),
                    onPressed: _gerarFrase ,//aqui vai a função de frases aleatórias
                    child: Text('Nova Frase',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),

              ],

            ),
          ),
        ),
      );
    }
  }
