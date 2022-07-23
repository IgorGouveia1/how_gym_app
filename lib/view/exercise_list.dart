import 'package:flutter/material.dart';
import '/view/exercice_form.dart';

class TrainingList extends StatelessWidget {
  const TrainingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: const Text('Treino em Andamento'),
      ),
      // body: FutureBuilder(
      //   future: Future.delayed(const Duration(seconds: 1)).then(
      //     (value) => findAll(),
      //   ),
      //   builder: (context, snapshot) {
      //     if (snapshot.data != null) {
      //       final List<Exercicio> exercicio = snapshot.data;
      //       return ListView.builder(
      //         itemBuilder: (context, index) {
      //           final Exercicio exercicio = exercicio[index];
      //           return _ExercicioItem(Exercicio);
      //         },
      //         itemCount: exercicio.length,
      //       );
      //     }
      //     return const CircularProgressIndicator();
      //   },
      // ),
      body: const _ExercicioItem(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade400,
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => const ExerciceForm(),
                ),
              )
              .then((newExercicio) => debugPrint(newExercicio.toString()));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class _ExercicioItem extends StatelessWidget {
  const _ExercicioItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text('Supino Inclinado'),
        subtitle: Text('3 Séries'),
        tileColor: Colors.white,
      ),
    );
  }
}
