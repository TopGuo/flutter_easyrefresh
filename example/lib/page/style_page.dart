import 'package:example/generated/translations.dart';
import 'package:example/page/ball_pulse_page.dart';
import 'package:example/page/basic_page.dart';
import 'package:example/page/material_page.dart';
import 'package:example/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

/// 样式页面
class StylePage extends StatefulWidget {
  @override
  _StylePageState createState() => _StylePageState();

}
class _StylePageState extends State<StylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Translations.of(context).text("style")),
      ),
      body: EasyRefresh(
        behavior: ScrollOverBehavior(),
        child: ListView(
          children: <Widget>[
            ListItem(
              title: "Classic",
              describe: Translations.of(context).text("classicDescribe"),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){
                  return BasicPage();
                }));
              },
              icon: Icon(Icons.format_list_bulleted,
                color: Colors.orange,
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Container(
                color: Colors.black12,
              ),
            ),
            ListItem(
              title: "Material",
              describe: Translations.of(context).text("materialDescribe"),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){
                  return MaterialPage();
                }));
              },
              icon: Icon(Icons.android,
                color: Colors.orange,
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Container(
                color: Colors.black12,
              ),
            ),
            ListItem(
              title: "BallPulse",
              describe: Translations.of(context).text("ballPulseDescribe"),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){
                  return BallPulsePage();
                }));
              },
              icon: Icon(Icons.lens,
                color: Colors.orange,
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Container(
                color: Colors.black12,
              ),
            ),
            ListItem(
              title: Translations.of(context).text("moreStyle"),
              describe: Translations.of(context).text("moreStyleDescribe"),
              icon: Icon(Icons.style,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}