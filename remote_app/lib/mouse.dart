import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mouse extends StatelessWidget {
  const Mouse({Key? key}) : super(key: key);

  static const String _title = 'Mouse Controller';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double x = 0.0;
  double y = 0.0;

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(350.0, 600.0)),
          child: MouseRegion(
            onHover: _updateLocation,
            child: Container(
              color: Colors.grey[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
