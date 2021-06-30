import 'package:flutter/material.dart';

class BookingItem extends StatefulWidget {
  BookingItem({Key? key, required this.bookingItem}) : super(key: key);
  final Map bookingItem;

  @override
  _BookingItemState createState() => _BookingItemState();
}

class _BookingItemState extends State<BookingItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                tileColor: Colors.grey,
                title: Row(
                  children: <Widget>[
                    Text(
                        widget.bookingItem['date']
                    ),
                    SizedBox(width: 10),
                    Text(
                      '(' + widget.bookingItem['luna_date'] + ')',
                      style: TextStyle(color: Colors.grey)
                    )
                  ],
                )
              )
            ]
          )
        )
    );
  }
}