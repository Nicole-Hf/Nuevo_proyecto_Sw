// ignore_for_file: avoid_web_libraries_in_flutter, library_private_types_in_public_api, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414
  );

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20,),
            DrawerHeader(
              child: Container(
                height: 142,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: const Text('Ciudad',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              leading: const Icon(
                Icons.maps_ugc,
                size: 20.0,
                color: Colors.grey,
              ),
              onTap: () {
                /* Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => dealerBuilder()));*/
              },
            ),
            const SizedBox(height: 20,),
            ListTile(
              title: const Text('Mis viajes',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              leading: const Icon(
                Icons.cabin,
                size: 20.0,
                color: Colors.grey,
              ),
              onTap: () {
                /* Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => dealerBuilder()));*/
              },
            ),
            const SizedBox(height: 20,),
            ListTile(
              title: const Text('Configuraciones',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              leading: const Icon(
                Icons.adjust_sharp,
                size: 20.0,
                color: Colors.grey,
              ),
              onTap: () {
                /* Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => dealerBuilder()));*/
              },
            ),
            const SizedBox(height: 20,),
            ListTile(
              title: const Text('Logout',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
              leading: const Icon(
                Icons.logout,
                size: 20.0,
                color: Colors.grey,
              ),
              onTap: () {
                /* Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => dealerBuilder()));*/
              },
            ),           
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Modo Conductor'),
                    ),
                  )
                ),
              )
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              Expanded(
                child: GoogleMap(
                  initialCameraPosition: _kLake,
                  mapType: MapType.normal,                      
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Theme.of(context).primaryColorDark,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: IconButton(                        
                    icon: Icon(
                      Icons.menu,
                      color: Theme.of(context).bottomAppBarColor,
                      size: 20,
                    ),
                    onPressed: () => scaffoldKey.currentState?.openDrawer(),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 1),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.96,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: textController1,
                              onChanged: (_) => EasyDebounce.debounce(
                                'textController1',
                                const Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                hintText: 'Lugar de recogida',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.pin_drop_outlined,
                                ),
                              ),
                            ),
                            const Divider(
                              height: 3,
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            TextFormField(
                              controller: textController2,
                              onChanged: (_) => EasyDebounce.debounce(
                                'textController2',
                                const Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                hintText: 'Lugar de destino',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.pin_drop_outlined,
                                ),
                              ),                    
                            ),
                            const Divider(
                              height: 3,
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            TextFormField(
                              controller: textController3,
                              onChanged: (_) => EasyDebounce.debounce(
                                'textController3',
                                const Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                hintText: 'Ofrezca su tarifa',
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.payment,
                                ),
                              ),
                            ),
                            const Divider(
                              height: 3,
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 10,),
                            Align(
                              alignment: const AlignmentDirectional(0.05, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                child: const Text('Solicitar auto'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
