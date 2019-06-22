import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/blocs/counter_bloc/counter_bloc.dart';
import 'screens/counter_screen.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: BlocProvider<CounterBloc>(
        builder: (BuildContext context){
          return CounterBloc();
        },
        child: CounterScreen(),
      ),
    );
  }
}
