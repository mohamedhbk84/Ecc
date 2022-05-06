import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project/shared/components.dart';

class Locations_Screen extends StatelessWidget {
  const Locations_Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCustomAppBar(
          context: context,
          title: 'Locations',
          canPop: true,
          haveBell: true,
          haveNotf: true,
          search: true,
          toolbarHeight: 140),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, pos) {
            CameraPosition _kGooglePlex;
            List<Marker> _markers = <Marker>[];
            Completer<GoogleMapController> _controller = Completer();
            _kGooglePlex = CameraPosition(
              target: LatLng(30.01391921190839, 31.213302952131862),
              zoom: 10,
            );
            _markers.add(Marker(
              markerId: MarkerId('1'),
              position: LatLng(30.01391921190839, 31.213302952131862),
              // infoWindow: InfoWindow(
              //     title: 'The title of the marker'
              // )
            ));
            return Card(
              elevation: 8,
              child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: _kGooglePlex,
                          zoomGesturesEnabled: true,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                          markers: Set<Marker>.of(_markers),
                        ),
                      ),
                      PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          print('You Click on po up menu item $value');
                        },
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
