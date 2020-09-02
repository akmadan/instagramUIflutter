import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    final List<String> urls = [
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1561637235-895323c40053?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1552457309-e45be97707ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1499492568083-9115ab12d0d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1527091481625-e3d4db4fc3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1503944583220-79d8926ad5e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    ];
    return new Container(
      margin: const EdgeInsets.all(7.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urls.length,
                itemBuilder: (context, index) => new Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    new Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(urls[index])),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    index == 0
                        ? Positioned(
                            right: 10.0,
                            child: new CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 10.0,
                              child: new Icon(
                                Icons.add,
                                size: 14.0,
                                color: Colors.white,
                              ),
                            ))
                        : new Container()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
