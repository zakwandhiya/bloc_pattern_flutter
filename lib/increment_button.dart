import 'package:flutter/material.dart';
import 'counter_bloc.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue[400],
      padding: EdgeInsets.symmetric(vertical: 4),
      child: const Icon(Icons.remove , size: 36, color: Colors.white,),
      onPressed: () {
        bloc.decrement();
      },
    );
  }
}