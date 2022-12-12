import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maxidigital_case/app/style_constants.dart';

class HeadingWidget extends StatelessWidget {
  final double headingHeight;

  const HeadingWidget({super.key, required this.headingHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: kToolbarHeight, left: 24, right: 24),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [headingGradientStartColor, headingGradientEndColor],
            ),
          ),
          height: headingHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back, color: Colors.white, size: 32)),
                  Expanded(child: Image.asset('assets/logo.png', height: 28, fit: BoxFit.fitHeight)),
                  const IconButton(icon: Icon(Icons.home, color: Colors.transparent), onPressed: null),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Total Earned", style: TextStyle(color: Colors.white70, fontSize: 12)),
                              const SizedBox(height: 8),
                              const Text("330 €", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(Icons.money, size: 16),
                                  SizedBox(width: 8),
                                  Text(
                                    "You can claim!",
                                    style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text("Total Earned", style: TextStyle(color: Colors.white70, fontSize: 12)),
                              SizedBox(height: 8),
                              Text("330 €", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                              SizedBox(height: 12),
                              Text("Maximum earnings 600 €"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Add some space between user list and heading content
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
