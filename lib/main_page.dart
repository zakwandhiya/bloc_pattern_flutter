import 'package:flutter/material.dart';
import 'counter_bloc.dart';
import 'increment_button.dart';
import 'decrement_button.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter :',
              style: TextStyle(fontSize: 30 , color: Colors.grey , fontWeight: FontWeight.w300),
            ),
            
            StreamBuilder<int>(
              stream: bloc.outCounter,
              initialData: 0,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 36),
                    child: Text(
                    '${snapshot.data}',
                    style: TextStyle(fontSize: 120 , color: Colors.grey , fontWeight: FontWeight.w300),
                  ),
                );
                
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                IncrementButton(),

                SizedBox(width: 48,),

                DecrementButton()
                
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
