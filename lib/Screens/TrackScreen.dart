import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zomato/Screens/Home.dart';
import 'package:zomato/Widgets/OrderDetailsMap.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class TrackScreen extends StatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  _TrackScreenState createState() => _TrackScreenState();
}

// Starting point latitude
double _originLatitude = 17.3457;
// Starting point longitude
double _originLongitude = 78.5522;
// Destination latitude
double _destLatitude = 17.4436;
// Destination Longitude
double _destLongitude = 78.4458;
// Markers to show points on the map
Map<MarkerId, Marker> markers = {};

PolylinePoints polylinePoints = PolylinePoints();
Map<PolylineId, Polyline> polylines = {};

class _TrackScreenState extends State<TrackScreen> {
  // int comingPriceValue=0;
  // _HistoryMapState(this.comingPriceValue);

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 9.4746,
  );

  @override
  void initState() {
    /// add origin marker origin marker
    _addMarker(
      LatLng(_originLatitude, _originLongitude),
      "origin",
      BitmapDescriptor.defaultMarker,
    );

    // Add destination marker
    _addMarker(
      LatLng(_destLatitude, _destLongitude),
      "destination",
      BitmapDescriptor.defaultMarkerWithHue(90),
    );

    _getPolyline();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // arguments = ModalRoute.of(context).settings.arguments as Map;
    // if ((arguments != null)) {
    //   updateUserDetails = arguments['myData'];
    //   // String comingDate = formatTime(updateUserDetails.pickedupOn);
    //   // print(comingDate);
    // }
    //getOrderDetails();

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const OrderDetailsMap(),
        // backgroundColor: Colors.grey,
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              myLocationEnabled: true,
              tiltGesturesEnabled: true,
              compassEnabled: true,
              scrollGesturesEnabled: true,
              zoomGesturesEnabled: true,
              polylines: Set<Polyline>.of(polylines.values),
              markers: Set<Marker>.of(markers.values),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            InkWell(
              onTap: () async {
                await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.fromLTRB(18, 30, 0, 0),
                alignment: AlignmentDirectional.topStart,
                decoration: BoxDecoration(
                    color: const Color(0xff09284B),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: const Color(0xff09284B))),
                child: const Align(
                  alignment: AlignmentDirectional.center,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // This method will add markers to the map based on the LatLng position
  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
        Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  _addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = const PolylineId("area");
    Polyline polyline = Polyline(
      polylineId: id,
      points: polylineCoordinates,
      width: 8,
    );
    polylines[id] = polyline;
    setState(() {});
  }

  void _getPolyline() async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "Your API Key",
      PointLatLng(_originLatitude, _originLongitude),
      PointLatLng(_destLatitude, _destLongitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    _addPolyLine(polylineCoordinates);
  }
}
