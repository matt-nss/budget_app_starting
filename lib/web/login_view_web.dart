import 'package:budget_app_starting/view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import '../components.dart';

class LoginViewWeb extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(viewModel);
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/login_image.png",
              width: deviceWidth / 2.6,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: deviceHeight / 5.5,
                  ),
                  Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                    width: 200.0,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  EmailAndPasswordFields(),
                  SizedBox(
                    height: 30.0,
                  ),
                  // Login & Register b
                  RegisterAndLogin(),
                  SizedBox(
                    height: 30.0,
                  ),
                  GoogleSignInButton()
                ],
              ),
            )
          ],
        ),
        appBar: AppBar(),
      ),
    );
  }
}
