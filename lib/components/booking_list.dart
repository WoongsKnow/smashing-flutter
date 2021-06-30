import 'package:flutter/material.dart';
import 'booking_item.dart';

class BookingList extends StatefulWidget {
  BookingList({Key? key, required title}) : super(key: key);

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  @override
  _BookingListState createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return BookingItem(bookingItem: {
                'date': '21.06.08',
                'luna_date': '5. 22 12물',
                'state': 0
              });
            }
        )
    );
  }
}