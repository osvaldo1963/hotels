import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  const Hotels({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Hotels();
}

class _Hotels extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.lewislandscape.com/wp-content/grand-media/image/GalleryImage1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  )),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.green,
                      ),
                      const Spacer(),
                      const Text(
                        "Thailand Islands",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text("15 Jun - 18 Jun",
                          style: TextStyle(color: Colors.white)),
                      const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.white,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            )),
                        alignment: Alignment.center,
                        height: 60,
                        child: const Text("14 Hotels Available"),
                      )
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [Text("dsdsdsdsd")],
                ),
              )),
        ],
      ),
    );
  }
}
