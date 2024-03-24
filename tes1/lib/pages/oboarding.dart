// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboardingItem.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final controller = OnboardingItems();
    final pageController = PageController();
    bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: PageView.builder(
        controller: pageController,
        itemCount: controller.items.length,
        onPageChanged: (index) {

          setState(() {
            isLastPage = index == controller.items.length - 1;
          });
        },
        itemBuilder: (context, i) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 454,
                margin: const EdgeInsets.only(top: 374),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                  ),
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 200),
                    Text(
                      controller.items[i].discription,
                      style: const TextStyle(fontSize: 20, color: Colors.yellow),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: controller.items.length,
                      effect: const WormEffect(
                        dotColor: Color.fromARGB(255, 235, 230, 185),
                        activeDotColor: Colors.yellow,
                        dotWidth: 25,
                        dotHeight: 20,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isLastPage) {
                          Navigator.pushReplacementNamed(context, '/welcome');
                        } else {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.yellow),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                        ),
                      ),
                      child: Text(
                        isLastPage ? "SIGN IN" : "NEXT",
                        style: const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 334,
                width: 307,
                padding: const EdgeInsets.fromLTRB(33, 42, 29, 77),
                margin: const EdgeInsets.fromLTRB(34, 172, 34, 306),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                child: Image.asset(controller.items[i].image),
              )
            ],
          );
        },
      ),
    );
  }
}
