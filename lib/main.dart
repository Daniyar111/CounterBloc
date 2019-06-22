import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';
import 'src/data/blocs/bloc_delegate.dart';
import 'src/data/blocs/counter_bloc/counter_bloc.dart';
import 'src/data/blocs/theme_bloc/theme_bloc.dart';

void main(){

  BlocSupervisor.delegate = SimpleBlocDelegate();

  return runApp(
    BlocProviderTree(
      blocProviders: [
        BlocProvider<CounterBloc>(
          builder: (context) => CounterBloc(),
        ),
        BlocProvider<ThemeBloc>(
          builder: (context) => ThemeBloc(),
        )
      ],
      child: App(),
    )
  );
}