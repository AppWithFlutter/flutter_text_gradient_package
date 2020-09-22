import 'package:flutter/material.dart';
import 'package:text_gradient/text_gradient.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Package Development'),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: <Widget>[
                TextGradient(
                  text: 'appwithflutter.com',
                  textGradient: LinearGradient(
                    colors: [
                      Color(0xffbc4e9c),
                      Color(0xfff80759),
                    ],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                  ),
                  textStyle: TextStyle(
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextGradient(
                  text: '@appwithflutter',
                  textGradient: LinearGradient(
                    colors: [
                      Color(0xff00b09b),
                      Color(0xff96c93d),
                    ],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                  ),
                  textStyle: TextStyle(
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextGradient(
                  text: 't.me/appwithflutter',
                  textGradient: LinearGradient(
                    colors: [
                      Color(0xfffc4a1a),
                      Color(0xfff7b733),
                    ],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                  ),
                  textStyle: TextStyle(
                    fontSize: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
