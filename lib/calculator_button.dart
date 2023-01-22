import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {super.key,
      this.color,
      this.textColor,
       this.buttonText,
      this.buttonTapped});

  final color;
  final textColor;
  final String? buttonText;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: EdgeInsets.all(0.2),
        child: ClipRect(
              child: Container(
                color: color,
                child: Center(
                  child: Text(buttonText!,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                ),
              ),
        ),
      ),
    
    );
  }
}
