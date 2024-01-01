import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerBox extends StatelessWidget {
  final String number;
  final IconData icons;
  void Function()? onPressed;
  ContainerBox({
    super.key,
    required this.icons,
    required this.number,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                icons,
                size: 30.0,
              ))
        ],
      ),
    );
  }
}
