import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/blocs/counter_bloc/counter_bloc.dart';
import 'data/blocs/theme_bloc/theme_bloc.dart';
import 'screens/counter_screen.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<ThemeBloc>(context),
      builder: (BuildContext context, ThemeData theme){
        return MaterialApp(
          title: 'Counter',
          home: CounterScreen(),
          theme: theme,
        );
      },
    );
  }
}
