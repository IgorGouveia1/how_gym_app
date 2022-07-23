import 'package:flutter/material.dart';
import 'package:gym_app_how/components/h2_text.dart';
import '/components/h1_text.dart';
import '/view/exercise_list.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/dumbbell.png'),
            const H1Text(text: 'MEU TREINO'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TrainingList(),
                      ));
                    },
                    child: Ink.image(
                      image: const AssetImage(
                        'lib/assets/circleavatar.jpg',
                      ),
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: H2Text(text: 'ACESSAR'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green.shade400,
    );
  }
}
