import 'package:flutter/material.dart';
import 'package:vespa_apps/class/Itemvespa/item_vespa.dart';
import 'package:vespa_apps/page/detail_screen.page.dart';
import 'package:vespa_apps/page/profile_page.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  late IconData iconDataPa = Icons.light_mode;
  var icolor = Colors.greenAccent;

  var kIcon;
  var bgColors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ((kIcon == null) ? icolor : kIcon),
        title: const Text("Vespa"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProfilePage();
                }));
              },
              child: const Icon(Icons.person)),
          const SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                setState(() {
                  if (iconDataPa == Icons.light_mode) {
                    kIcon = Colors.black;
                    bgColors = Colors.black;
                    iconDataPa = Icons.dark_mode;
                  } else {
                    kIcon = Colors.greenAccent;
                    bgColors = Colors.grey[300];
                    iconDataPa = Icons.light_mode;
                  }
                });
              },
              child: Icon(iconDataPa)),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: bgColors,
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              final Vespa place = dataVespa[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreenPage(
                      place: place,
                    );
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.contain, image: AssetImage(place.image)),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    place.tipe,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            itemCount: dataVespa.length,
          ),
        ),
      ),
    );
  }
}
