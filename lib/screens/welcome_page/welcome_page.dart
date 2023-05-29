import 'package:flutter/material.dart';
import 'package:niam_express_food_app/constans/constans.dart';
import 'package:niam_express_food_app/screens/sign_in/sign_in_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyConstans.primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.6,
            width: double.infinity,
            child: Center(
              child: Image.asset(
                'assets/images/welcome_image.png',
              ),
            ),
          ),
          Container(
            height: size.height * 0.4,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                  child: Text(
                    'Get you food fastly',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: MyConstans.blackWithOpacity7,
                      fontSize: 36,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel sapien eget ipsum faucibus eu felis vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel sapien eget ipsum faucibus eu felis vitae.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: MyConstans.blackWithOpacity7,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: MyConstans.primaryColor,
                              width: 2,
                            ),
                          ),
                          child: const Icon(Icons.navigate_next),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()));
                        },
                        child: Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyConstans.primaryColor,
                            ),
                            child: const Icon(
                              Icons.navigate_next,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
