import 'package:flutter/material.dart';
import 'package:movieapp/app.dart';
import 'package:movieapp/scoped_models/app_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:scoped_model/scoped_model.dart';
void main() async{
SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  runApp(ScopedModel<AppModel>(
      model: AppModel(sharedPreferences), child: MovieApp()));

}