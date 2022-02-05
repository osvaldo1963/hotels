import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:travel_mobile_app/src/Stores/destination_store.dart';
import 'package:travel_mobile_app/src/Views/Destinations/Body/destinations_body.dart';
import 'package:travel_mobile_app/src/Views/Destinations/Footer/destinations_footer.dart';
import 'package:travel_mobile_app/src/Components/Header/header.dart';

class HomeDestination extends StatefulWidget {
  const HomeDestination({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeDestination();
}

class _HomeDestination extends State<HomeDestination> {
  @override
  void initState() {
    super.initState();
    DestinationStore destinationStore =
        Provider.of<DestinationStore>(context, listen: false);
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      var destinations = [
        {"destination": "Cancun, Mexico", "price": "350"},
        {"destination": "Cancun, Puerto Rico", "price": "150"},
        {"destination": "Cancun, Canada", "price": "550"},
      ];
      destinationStore.setDestinations(destinations);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Header(text: "Destinations"),
            const Expanded(flex: 2, child: Body()),
            const Expanded(flex: 1, child: Footer()),
          ],
        ),
      ),
    );
  }
}
