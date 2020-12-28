import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/refresh_bloc_bloc.dart';
import 'indended_page.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: BlocProvider(
          create: (context) => RefreshBlocBloc(),
          child: BlocBuilder<RefreshBlocBloc, RefreshBlocState>(
            builder: (context, state) {
              if (state is Loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is Loaded) {
                return IntendedPage();
              }
            },
          ),
        ),
      ),
    );
  }
}
