import 'package:flutter/material.dart';
import 'counter_bloc.dart';

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue[400],
      padding: EdgeInsets.symmetric(vertical: 4),
      child: const Icon(Icons.add , size: 36, color: Colors.white,),
      onPressed: () {
        bloc.increment();
      },
    );
  }
}