import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_application/screens/auth/ragisterScreen.dart';
import 'package:taxi_application/screens/splash/splash2.dart';
import 'package:taxi_application/screens/splash/splash3.dart';
import 'package:taxi_application/screens/splash/splash4.dart';
import 'package:taxi_application/widgets/widgets.dart';

class Splash1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Welcome1.png'),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50 , horizontal: 15),
                    child: InkWell(
                        child: SkipBtn(),
                        onTap: () {
                          Get.to(RagisterScreen());
                        }),
                  ),
                  SizedBox(height: 400),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: InkWell(
                          child: NextBtn(),
                          onTap: () {
                            Get.to(Splash2());
                          }),
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
