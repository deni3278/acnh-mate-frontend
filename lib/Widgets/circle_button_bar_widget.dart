import 'package:flutter/material.dart';

class CircleButtonBarWidget extends StatefulWidget {
  CircleButtonBarWidget(
      {Key? key,
      required this.iconImage,
      required this.onPressed,
      required this.count,
      required this.filled})
      : super(key: key);
  String iconImage = "fossil.png";
  Function onPressed;
  int count;
  Future<int> filled;

  @override
  _CircleButtonBarWidgetState createState() => _CircleButtonBarWidgetState();
}

class _CircleButtonBarWidgetState extends State<CircleButtonBarWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: widget.filled,
        builder: (context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            var iconPress =
                List<bool>.generate(widget.count, (index) => index < (snapshot.data as int));
            return Container(
                margin: EdgeInsets.only(bottom: 20, left: 10),
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: List.generate(
                    widget.count,
                    (index) => CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor: iconPress[index] ? Colors.blue : Colors.white,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                iconPress[index] = !iconPress[index];
                              });
                              widget.onPressed(iconPress[index]);
                            },
                            icon: Image.asset("assets/button_icons/${widget.iconImage}"),
                            color: Colors.blue,
                          ),
                        )),
                  ),
                ));
          } else {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[CircularProgressIndicator(), Text("Loading...")]);
          }
        });
  }
}
