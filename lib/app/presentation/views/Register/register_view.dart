import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unaslindas/app/presentation/widgets/links_common.dart';
import 'package:unaslindas/app/presentation/widgets/miboton.dart';


class RegisterView extends StatelessWidget {

  static const String name = 'register_view';
  final _emailAddress = TextEditingController();
  final _name = TextEditingController();
  final _lastName = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SvgPicture.asset('assets/images/MyMarca.svg',
                  alignment: Alignment.topCenter,
                  height: 100,
                  width: 100,
                  colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn
                  ),

                ),

                  Text("Register",
                    style: TextStyle(
                      fontSize: 20,
                      height: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  MyFromTextField(
                    labelText: 'Name',
                    hintText: 'Enter your name...',
                    TextInputType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _name,
                  ),
                  const SizedBox(height: 20,),
                  MyFromTextField(
                    labelText: 'Last Name',
                    hintText: 'Enter your last name...',
                    TextInputType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _lastName,
                  ),
                  const SizedBox(height: 20,),
                  MyFromTextField(
                    labelText: 'Username',
                    hintText: 'Enter your username...',
                    TextInputType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _username,

                  ),
                  const SizedBox(height: 20,),
                  MyFromTextField(
                    labelText: 'Email',
                    hintText: 'Enter your email address...',
                    TextInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _emailAddress,

                  ),
                  const SizedBox(height: 20,),
                  MyFromTextField(
                    labelText: 'Password',
                    hintText: 'Enter your password...',
                    TextInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _password,

                  ),
                  const SizedBox(height: 20,),
                  MyFromTextField(
                    labelText: ' Confirm password',
                    hintText: 'Enter your password confirmation...',
                    TextInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _confirmPassword,

                  ),
                  const SizedBox(height: 20,),
                  MYBoton(text:"Registrar", onPressed: (){},)

                ],
              ),
            ),
          )
      ),
    );
  }
}