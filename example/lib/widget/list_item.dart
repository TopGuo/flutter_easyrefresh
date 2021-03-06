import 'package:flutter/material.dart';

/// 示例页面
class ListItem extends StatefulWidget {
  // 点击事件
  final VoidCallback onPressed;
  // 图标
  final Icon icon;
  // 标题
  final String title;
  final Color titleColor;
  // 描述
  final String describe;
  final Color describeColor;

  // 构造函数
  ListItem({
    Key key,
    this.onPressed,
    this.icon,
    this.title,
    this.titleColor: Colors.black,
    this.describe,
    this.describeColor: Colors.grey
  }): super(key: key);

  @override
  _ListItemState createState() => _ListItemState();

}
class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.onPressed,
      padding: EdgeInsets.all(0.0),
      shape: Border.all(
        color: Colors.transparent,
        width: 0.0,
        style: BorderStyle.none,
      ),
      child: Container(
        height: 60.0,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            widget.icon != null ? Container(
              padding: EdgeInsets.all(14.0),
              child: SizedBox(
                height: 32.0,
                width: 32.0,
                child: widget.icon,
              ),
            ): Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                widget.title != null ? Text( widget.title,
                  style: TextStyle(
                    color: widget.titleColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ): Container(),
                widget.describe != null ? Text( widget.describe,
                  style: TextStyle(
                      color: widget.describeColor,
                      fontSize: 12.0
                  ),
                ): Container(),
              ],
            )
          ],
        )
      ),
    );
  }
}

class EmptyIcon extends Icon {
  EmptyIcon() : super(Icons.hourglass_empty);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}