import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Ahmed'),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: const EdgeInsets.only(
          top: 5,
          bottom: 20,
          left: 10,
        ),
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xFF34D49E),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'DINNextLTW23',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
