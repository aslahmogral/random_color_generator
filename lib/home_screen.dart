import 'package:flutter/material.dart';
import 'package:random_color_generator/utils/Dimens.dart';
import 'package:random_color_generator/utils/random_color_generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> _generateColorNotifier = ValueNotifier(12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: ValueListenableBuilder<int>(
            valueListenable: _generateColorNotifier,
            builder: (context, generatedColor, child) {
              return Text(
                'Random Color Generator',
                style: TextStyle(color: Colors.primaries[generatedColor]),
              );
            }),
      ),
      body: ValueListenableBuilder<int>(
        builder: (context, generatedColor, child) {
          return InkWell(
            onTap: () {
              assignColorMethod();
            },
            child: Container(
              color: Colors.primaries[generatedColor],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingLg),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: Center(
                    child: Text('Hey There',
                        style: TextStyle(
                            fontSize: Dimens.fontLg,
                            color: Colors.primaries[generatedColor])),
                  ),
                ),
              ),
            ),
          );
        },
        valueListenable: _generateColorNotifier,
      ),
    );
  }

  void assignColorMethod() {
    _generateColorNotifier.value = RandomColorGenerator().generatedColor;
  }
}
