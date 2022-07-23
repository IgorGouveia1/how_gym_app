import 'package:flutter/material.dart';

class ExerciceForm extends StatefulWidget {
  const ExerciceForm({Key? key}) : super(key: key);

  @override
  State<ExerciceForm> createState() => _ExerciceFormState();
}

class _ExerciceFormState extends State<ExerciceForm> {
  final TextEditingController _exercicioControler = TextEditingController();

  final TextEditingController _seriesControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          title: const Text('Novo Exercício')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _exercicioControler,
                decoration: const InputDecoration(labelText: 'Exercício'),
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            TextField(
              controller: _seriesControler,
              decoration: const InputDecoration(labelText: 'Número de Séries'),
              style: const TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: ElevatedButton(
                onPressed: () {
                  // final String exercicio = _exercicioControler.text;
                  // final String series = _seriesControler.text;
                  // final Exercicio newExercicio =
                  //     Exercicio(0, exercicio, series);
                  // Navigator.pop(context, newExercicio);
                },
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Salvar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
