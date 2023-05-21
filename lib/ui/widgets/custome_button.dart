import 'package:flutter/material.dart';

Widget customeButton(
  String title,
  onPressed,
) {
  return Container(
    height: 50,
    decoration:const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Material(
      borderRadius:const BorderRadius.all(Radius.circular(10)),
      color: const Color(0xff1aa260),
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.white,
        child: Center(
          child: Text(
            title,
            style:const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
      ),
    ),
  );
}
