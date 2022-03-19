import 'package:clime_provider/utilities/constants.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: Colors.white,
                  ),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          width: 0.0, style: BorderStyle.none)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child:  TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: kTextFieldInputDecoration,
                  onChanged: (value) {},
                ),
              ),
              TextButton(
                onPressed: () {

                },
                child: const Text(
                  'Get Weather',
                  style: buttonTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
