import 'dart:async';
import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:beyond/services/register_services.dart';
import 'package:beyond/services/report_services.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gmaps;

class ReportScreens extends StatefulWidget {
  const ReportScreens({super.key});

  @override
  State<ReportScreens> createState() => _ReportScreensState();
}

class _ReportScreensState extends State<ReportScreens> {
  TextEditingController suspectNameController = TextEditingController();
  TextEditingController suspectMobileController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  String? selectedIssue;
  String? selectDistrict;
  String? selectOption;
  late double latitude;
  late double longitude;
  final formKey = GlobalKey<FormState>();
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception("Location permissoin are denied.");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
          'Location permission are permenetly denied , we cannot requestn premission.');
    }

    return await Geolocator.getCurrentPosition();
  }

  final Completer<gmaps.GoogleMapController> _controller = Completer();

  static const gmaps.CameraPosition _kGooglePlex = gmaps.CameraPosition(
    target: gmaps.LatLng(9.987624117742515, 76.48177570949503),
    zoom: 14.4746,
  );

  final List<gmaps.Marker> _marker = <gmaps.Marker>[
    gmaps.Marker(
      markerId: gmaps.MarkerId("1"),
      position: gmaps.LatLng(9.987624117742515, 76.48177570949503),
      infoWindow: gmaps.InfoWindow(
        title: 'Selected Location',
      ),
    )
  ];

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      log("error : ${error.toString()}");
    });

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          gmaps.GoogleMap(
            initialCameraPosition: _kGooglePlex,
            markers: Set<gmaps.Marker>.of(_marker),
            onMapCreated: (gmaps.GoogleMapController cotroller) {
              _controller.complete(cotroller);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                getUserCurrentLocation().then(
                  (value) async {
                    log("Latitude : ${value.latitude} , Longitude :${value.longitude}");
                    latitude = value.latitude;
                    longitude = value.longitude;
                    // Add a new marker for the current location
                    setState(() {
                      _marker.add(
                        gmaps.Marker(
                          markerId: gmaps.MarkerId("current_location"),
                          position:
                              gmaps.LatLng(value.latitude, value.longitude),
                          infoWindow: gmaps.InfoWindow(
                            title: "Spotted Location",
                          ),
                        ),
                      );
                    });

                    // Update the camera position to the current location
                    gmaps.CameraPosition cameraPosition = gmaps.CameraPosition(
                      target: gmaps.LatLng(value.latitude, value.longitude),
                      zoom: 18,
                    );

                    final gmaps.GoogleMapController controller =
                        await _controller.future;
                    controller.animateCamera(
                      gmaps.CameraUpdate.newCameraPosition(cameraPosition),
                    );
                  },
                );
              },
              child: Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(bottom: 80, left: 60, right: 60),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 36, 127, 133),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Locate me",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return Align(
                    alignment: Alignment
                        .topCenter, // Adjust position (e.g., top, bottom)
                    child: Material(
                      type: MaterialType.transparency,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: MediaQuery.of(context).size.height * 0.7,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              DropdownButton(
                                  value: selectedIssue,
                                  hint: selectedIssue == null ||
                                          selectedIssue!.isEmpty
                                      ? Text("Select issue")
                                      : null,
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                        value: "Consumer",
                                        child: Text("Consumer")),
                                    DropdownMenuItem<String>(
                                        value: "Transpotation",
                                        child: Text("Transpotation")),
                                    DropdownMenuItem<String>(
                                        value: "Storage",
                                        child: Text("Storage")),
                                    DropdownMenuItem<String>(
                                        value: "Cultivation",
                                        child: Text("Cultivation")),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedIssue = value as String;
                                    });
                                  }),
                              SizedBox(
                                height: 10,
                              ),
                              DropdownButton<String>(
                                value:
                                    selectDistrict, // Current selected district
                                hint: Text("Select District"),
                                isExpanded: true,
                                items: [
                                  DropdownMenuItem(
                                      value: "Alappuzha",
                                      child: Text("Alappuzha")),
                                  DropdownMenuItem(
                                      value: "Ernakulam",
                                      child: Text("Ernakulam")),
                                  DropdownMenuItem(
                                      value: "Idukki", child: Text("Idukki")),
                                  DropdownMenuItem(
                                      value: "Kannur", child: Text("Kannur")),
                                  DropdownMenuItem(
                                      value: "Kasaragod",
                                      child: Text("Kasaragod")),
                                  DropdownMenuItem(
                                      value: "Kollam", child: Text("Kollam")),
                                  DropdownMenuItem(
                                      value: "Kottayam",
                                      child: Text("Kottayam")),
                                  DropdownMenuItem(
                                      value: "Kozhikode",
                                      child: Text("Kozhikode")),
                                  DropdownMenuItem(
                                      value: "Malappuram",
                                      child: Text("Malappuram")),
                                  DropdownMenuItem(
                                      value: "Palakkad",
                                      child: Text("Palakkad")),
                                  DropdownMenuItem(
                                      value: "Pathanamthitta",
                                      child: Text("Pathanamthitta")),
                                  DropdownMenuItem(
                                      value: "Thiruvananthapuram",
                                      child: Text("Thiruvananthapuram")),
                                  DropdownMenuItem(
                                      value: "Thrissur",
                                      child: Text("Thrissur")),
                                  DropdownMenuItem(
                                      value: "Wayanad", child: Text("Wayanad")),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    selectDistrict =
                                        value; // Update the selected district
                                  });
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: TextFormField(
                                  controller: suspectNameController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 10),
                                      border: InputBorder.none,
                                      hintText: "Suspect Name",
                                      hintStyle: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                      filled: true,
                                      fillColor: Colors.grey[200]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: DropdownButton<String>(
                                  value: selectOption,
                                  hint:
                                      Text("Suspect Location"), // Default hint
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      value: "Use Current Location",
                                      child: Text("Use Current Location"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Enter Manually",
                                      child: Text("Enter Manually"),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      selectOption =
                                          value; // Update Suspect Location
                                    });
                                  },
                                ),
                              ),
                              SizedBox(height: 5),
                              SizedBox(
                                height: 5,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: TextFormField(
                                  controller: suspectMobileController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 10),
                                      border: InputBorder.none,
                                      hintText: "Suspect Mobile Number",
                                      hintStyle: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                      filled: true,
                                      fillColor: Colors.grey[200]),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: descriptionController,
                                maxLines: 5,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 10),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(14)),
                                  hintText:
                                      " // If report is transportation mension startpoint and destination//",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 36, 127, 133),
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: InkWell(
                                  onTap: () async {
                                    log("select issue :$selectedIssue , select District $selectDistrict ,");

                                    // Getting values from the controllers
                                    final String issue =
                                        selectedIssue.toString();
                                    final String suspectName =
                                        suspectNameController.text.trim();
                                    final String suspectMobile =
                                        suspectMobileController.text.trim();
                                    final String description =
                                        descriptionController.text.trim();
                                    final double latitude = this.latitude;
                                    final double longitude = this.longitude;

                                    // Debugging: Log the values being sent to the backend
                                    log("Sending data: issue=$issue, suspectName=$suspectName, suspectMobile=$suspectMobile, description=$description, latitude=$latitude, longitude=$longitude");

                                    ReportServices reportServices =
                                        ReportServices();

                                    // Sending the request
                                    final data = await reportServices.report(
                                      issue,
                                      suspectName,
                                      suspectMobile,
                                      description,
                                      latitude,
                                      longitude,
                                    );
                                    log("recieved   data : $data");
                                    // If the data is null or the response was unsuccessful
                                    if (data == null) {
                                      log("Report submission failed.");
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.error,
                                        animType: AnimType.bottomSlide,
                                        headerAnimationLoop: false,
                                        showCloseIcon: false,
                                        title: "Report Failed",
                                        desc: 'Please fill the form properly.',
                                        btnOkText: "Continue",
                                        btnOkOnPress: () {},
                                        btnOkColor: Colors.green,
                                      ).show();
                                    } else {
                                      // If the report submission is successful
                                      log("Report submitted successfully.");
                                      AwesomeDialog(
                                        // ignore: use_build_context_synchronously
                                        context: context,
                                        dialogType: DialogType.warning,
                                        animType: AnimType.bottomSlide,
                                        headerAnimationLoop: false,
                                        showCloseIcon: false,
                                        title: "Report Successful",
                                        desc:
                                            'Speak up safely. Act Anonymously.',
                                        btnOkText: "Continue",
                                        btnOkOnPress: () {},
                                        btnOkColor: Colors.green,
                                      ).show();
                                      ;
                                    }
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 36, 127, 133),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
        child: Container(
          width: double.infinity,
          height: 70,
          color: Color.fromRGBO(231, 231, 231, 0.9),
          child: Center(
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  "Report Anonymously",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
