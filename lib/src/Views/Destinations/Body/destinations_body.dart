import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_mobile_app/src/Components/Cards/listview_card_destination.dart';
import 'package:travel_mobile_app/src/Stores/destination_store.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DestinationStore>(builder: (ctx, store, child) {
      return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: store.destinations.length,
          itemBuilder: (ctx, index) {
            Map<String, String> item = store.destinations[index];
            return ListViewCardDestination(onPress: () {
              store.setCurrent(item);
            });
          });
    });
  }
}
