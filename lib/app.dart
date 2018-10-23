import 'package:flutter/material.dart';
import 'package:movieapp/scoped_models/app_model.dart';
import 'package:movieapp/widgets/home_page.dart';
import 'package:scoped_model/scoped_model.dart';

class MovieApp extends StatelessWidget{

  @override
   Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (context, child, model) => MaterialApp(
            title: 'MovieInfo',
            theme: model.theme,
            home: HomePage(),
          ),
    );
  }
  
}