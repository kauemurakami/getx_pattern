import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyController extends RxController {
  
  final _num = 0.obs;
  get num => this._num.value;
  set num(value) => this._num.value = value;

  increment() {
    this.num++;
  }

  decrement() {
    this.num--;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GetX<MyController>(
                    init: MyController(),
                    builder: (_) {
                      return Text(_.num.toString());
                    }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GetX<MyController>(builder: (_) {
                  return FloatingActionButton(
                    onPressed: () => _.increment(),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  );
                }),
                SizedBox(
                  width: 30,
                ),
                GetX<MyController>(builder: (_) {
                  return FloatingActionButton(
                    onPressed: () => _.decrement(),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // This widget is the root of your application.

}
