import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[400],
            foregroundColor: Colors.white,
            title: Text('Title'),
            centerTitle: true,
          ),
          body:
              constraints.maxWidth < 600
                  ? Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Sdie Widget',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                  : Row(
                    children: [
                      Container(
                        width: 250,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            'Side Widget',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: LayoutBuilder(
                            builder: (_, constraint) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${constraint.maxWidth}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Main Widget',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

          floatingActionButton: Text(
            MediaQuery.of(context).size.width.toString(),
            style: TextStyle(fontSize: 33, color: Colors.white),
          ),
        );
      },
    );
  }
}
