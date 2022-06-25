// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({Key? key}) : super(key: key);

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: const Text('Editar Perfil',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF14181B),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFFDBE2E7),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                      child: Container(
                        width: 90,
                        height: 90,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(shape: BoxShape.circle,),
                        child: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text('U', style: TextStyle(fontSize: 40.0),),
                        ),                     
                      ),
                    ),
                  ),
                ],
              ),        
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Cambiar foto', 
                        style: TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF39D2C0),
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                        ),
                      ),                                                                 
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 16),
                child: TextFormField(
                  //controller: textController1,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: const TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: 'Your full name...',
                    hintStyle: const TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF14181B),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
                child: TextFormField(
                  //controller: emailAddressController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: const TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: 'Your email..',
                    hintStyle: const TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF14181B),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
                child: TextFormField(
                  //controller: emailAddressController,
                  decoration: InputDecoration(
                    labelText: 'Fecha de Nacimiento',
                    labelStyle: const TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: 'Your birthday..',
                    hintStyle: const TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF14181B),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ),              
              Align(
                alignment: const AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),                            
                        )
                      )
                    ),
                    onPressed: () {},
                    child: const Text('Guardar Cambios',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),                   
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
