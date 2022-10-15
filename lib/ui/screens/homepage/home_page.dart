import 'package:counter/ui/screens/homepage/home_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<HomePageViewModel>(context).scafoldColor,
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Consumer<HomePageViewModel>(
              builder: (context, model, child) {
                return Text(
                  '${model.count}',
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<HomePageViewModel>(context, listen: false)
                    .incrementCount();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
