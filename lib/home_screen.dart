import 'package:flutter/material.dart';
import 'package:random_color_generator/utils/dimens_file.dart';
import 'package:random_color_generator/utils/random_color_generator.dart';

///HomeScreen
class HomeScreen extends StatelessWidget {
  ///constructor of Homescreen
  final ValueNotifier<int> _generateColorNotifier = ValueNotifier(12);
  ///constructor of homescreen
   HomeScreen({super.key});


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
          },
        ),
      ),
      body: ValueListenableBuilder<int>(
        builder: (context, generatedColor, child) {
          return InkWell(
            onTap: () {
              assignColorMethod();
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              color: Colors.primaries[generatedColor],
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: DimensFile.paddingLarge,
                    vertical: DimensFile.paddingLarge,),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      'Hey There',
                      style: TextStyle(
                        fontSize: DimensFile.fontLarge,
                        color: Colors.primaries[generatedColor],
                      ),
                    ),
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
 ///gets random color
  void assignColorMethod() {
    _generateColorNotifier.value = RandomColorGenerator().generatedColor;
  }
}
