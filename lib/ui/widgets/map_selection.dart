import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class MapSelection extends StatelessWidget {
  final List<AvailableMap> availableMaps;
  final Coords place;
  final String title;

  const MapSelection({
    Key? key,
    required this.availableMaps,
    required this.place,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Wrap(
            children: <Widget>[
              for (var map in availableMaps)
                ListTile(
                  onTap: () {
                    map.showDirections(
                      destination: place,
                      destinationTitle: title,
                    );
                    Navigator.of(context).pop();
                  },
                  title: Text(map.mapName),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
