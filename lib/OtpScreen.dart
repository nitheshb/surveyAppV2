// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:surveyhub/nav.dart';

import '../main.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  OtpScreen({super.key, required this.verificationId});

  String verificationId;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController otp = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.050),
              child: Column(
                children: [
                  Image.asset('lib/assets/images/login.jpg'),
                  TextFormField(
                    controller: otp,
                    decoration: const InputDecoration(
                        labelText: 'Enter Otp',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6)))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.deepPurple,
                      primary: Colors.deepPurple,
                      minimumSize: Size(MediaQuery.of(context).size.width * 1,
                          MediaQuery.of(context).size.height * 0.060),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                    ),
                    onPressed: () async {
                      try {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationId,
                                smsCode: otp.text);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                   ButtomNavigationBar(),
                            ),
                            (route) => false);
                      } catch (e) {
                        log(e.toString());
                      }
                    },
                    child: const Text(
                      'Verify Otp',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
