import 'package:flutter/material.dart';
import 'package:otus_food_app/router/router.dart';

class OtusFoodApp extends StatelessWidget {
  const OtusFoodApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: routes,
    );
  }
}