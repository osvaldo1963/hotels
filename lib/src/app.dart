import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_mobile_app/src/Routes/routes.dart';
import 'package:travel_mobile_app/src/Stores/destination_store.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DestinationStore()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          initialRoute: '/home_destination',
          routes: Routes.getAppRoutes(),
          theme: ThemeData(primarySwatch: Colors.blue),
        ));
  }
}
