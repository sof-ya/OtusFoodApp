import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:otus_food_app/data/recieps_list_data.dart';
import 'package:otus_food_app/features/list_of_recieps/widgets/widgest.dart';

class ReciepsListScreen extends StatefulWidget {
  const ReciepsListScreen ({super.key});

  @override
  State<ReciepsListScreen> createState() => _ReciepsListScreenState();
}

class _ReciepsListScreenState extends State<ReciepsListScreen> {

  final reciepsList = getReciepsdata().getData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(
          icon: Transform.rotate(
              angle: 45 * math.pi / 180,
              child: Icon(Icons.local_pizza)),
          label: 'Рецепты',
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Вход',
          ),],
        selectedItemColor: const Color(0xff2ECC71),
      ),
      backgroundColor: Color(0xFFECECEC),
      body: Stack(children: [
        Container(
            constraints: const BoxConstraints(maxWidth: double.infinity),
            child: Padding(
              padding: EdgeInsets.only(top: 45),
              child: ReciepsListView(getReciepsList: reciepsList),
            )
        )
      ],
      ),
    );
  }
}