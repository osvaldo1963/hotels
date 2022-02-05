import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_mobile_app/src/Stores/destination_store.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<DestinationStore>(builder: (ctx, store, child) {
          return Text(
            store.current['destination'].toString(),
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          );
        }),
        Consumer<DestinationStore>(builder: (ctx, store, child) {
          return Text(
            store.current['price'].toString(),
            style: const TextStyle(color: Colors.grey),
          );
        }),
        const Spacer(),
        InkWell(
            onTap: () => Navigator.of(context).pushNamed('/datepicker'),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue),
              child: const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            )),
        const Spacer()
      ],
    );
  }
}
