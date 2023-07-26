import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unaslindas/app/presentation/widgets/my_from_text_field.dart';

class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //Logo
                SvgPicture.asset('assets/images/MyMarca.svg',
                  colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn
                  ),
                ),
                Text("Uñas Lindas",
                  style:TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  )

                ),
                const MyFromTextField(
                  labelText: 'Email',
                  hintText: 'ingresa',
                  TextInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,


                ),
                const MyFromTextField(
                  labelText: 'contraseña',
                  hintText: 'contraseña',
                  TextInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: true,
                ),
                Padding(
                    padding: const  EdgeInsets.symmetric( horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){},
                          child: Text('SE TE OLVIDO'))
                    ],
                  ),
                )

                //TextButton
              ],
            ),
          ),
        )
      ),
     );
  }
}
