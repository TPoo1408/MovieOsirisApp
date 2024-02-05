import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osiris/Services/auth.dart';
import 'package:osiris/Services/consts.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          color: background_primary,
          child: SafeArea(
            child: Container(
            color: background_primary,
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.3,
                ),
                Lottie.asset(
                  "assets/AuthDuck.json",
                  width: size.width * 0.60,
                  frameRate: FrameRate(60),
                ),
                Center(
                  child: Container(
                      margin: const EdgeInsets.all(24),
                      width: double.infinity,
                      height: 72,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                        // ************        another solution            ********* 
                        // Consumer<GoogleSignInProvider>(
                        //   builder: (context, provider, child) {
                        //     return Container(
                        //       margin: const EdgeInsets.all(24),
                        //       width: double.infinity,
                        //       height: 72,
                        //       child: ElevatedButton.icon(
                        //         onPressed: () {
                        //           provider.googleLogin();
                        //         },
                        //         icon: Icon(Icons.login),
                        //         label: Text('Login with Google'),
                        //       ),
                        //     );
                        //   },
                        // )
                        // ************        another solution            ********* 
                        // final provider = context.read<GoogleSignInProvider>();
                        // return Container(
                        //   margin: const EdgeInsets.all(24),
                        //   width: double.infinity,
                        //   height: 72,
                        //   child: ElevatedButton.icon(
                        //     onPressed: () {
                        //       provider.googleLogin();
                        //     },
                        //     icon: Icon(Icons.login),
                        //     label: Text('Login with Google'),
                        //   ),
                        // );
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                        label: Text(
                          sign_in_text,
                          style: const TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            backgroundColor: const Color(0xFF2A292F)),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(28, 0, 28, 24),
                  child: Text(
                    footer_text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Color(0xFF423E50)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
