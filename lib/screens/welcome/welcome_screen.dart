import 'package:doctor_ui/d.auth/sign_in.dart';
import 'package:doctor_ui/d.auth/signup.dart';
import 'package:doctor_ui/constants.dart';
import 'package:doctor_ui/p.auth/p.sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/splash_bg.svg',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset('assets/icons/gerda_logo.svg'),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => PatientSignIn()));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF6CD8D1),
                        ),
                        child: Text('Log In as Patient')),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) =>  DoctorSignIn ()));
                          },
                          style: TextButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFF6CD8D1))),
                            backgroundColor: Colors.transparent,
                          ),
                          child: Text('Login as Doctor')),
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
