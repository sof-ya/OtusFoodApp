import 'package:flutter/material.dart';

import '../../../data/recieps_list_data.dart';

class ReciepsListView extends StatelessWidget {
  const ReciepsListView ({
    Key? key,
    required this.getReciepsList
}) : super(key: key);

  final List<Recieps> getReciepsList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(padding: EdgeInsets.only(top: 24));
        },
        itemCount: getReciepsList.length,
        itemBuilder: (BuildContext context, int index) {
          final reciepsList = getReciepsList[index];
          return Center(
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              width: 396,
              height: 136,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(reciepsList.imagePath),
                      width: 149,
                      height: 136,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 165, top: 30),
                    child: SizedBox(
                      width: 208,
                      child: Text(
                        reciepsList.reciepeName,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 95, left: 165),
                    child: Icon(
                      Icons.watch_later_outlined,
                      size: 16,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 94, left: 192),
                    child: SizedBox(
                      height: 19,
                      child: Text(
                        reciepsList.timeOfCook,
                        style: const TextStyle(
                            color: Color(0xff2ECC71),
                            fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}

