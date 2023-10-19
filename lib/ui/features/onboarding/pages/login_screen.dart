import 'package:flutter/material.dart';
import 'package:shutla_v2/core/constants/image_path.dart';
import 'package:shutla_v2/core/constants/svg_path.dart';
import 'package:shutla_v2/core/utils/context_extension.dart';
import 'package:shutla_v2/ui/shared/widgets/app_text_field.dart';
import 'package:shutla_v2/ui/shared/widgets/image_render_widget.dart';
import 'package:shutla_v2/ui/shared/widgets/password_form_field.dart';
import 'package:shutla_v2/ui/shared/widgets/svg_render_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginBg(
      body: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          children: [
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.centerLeft,
              child: SvgRenderWidget(svgPath: SvgPath.logoTextPurple),
            ),
            const SizedBox(height: 60),
            Text("Welcome Back 👋", style: context.textTheme.displayLarge),
            Text("Login to your account"),
            const SizedBox(height: 30),
            AppTextField(
              label: "Email",
              field: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person_outline),
                  hintText: "Email address",
                ),
              ),
            ),
            const SizedBox(height: 30),
            AppTextField(
              label: "Password",
              field: PasswordField(
                hintText: "• • • • • • • •",
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(onPressed: (){}, child: Text("Login")),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account"),
                const SizedBox(width: 4),
                TextButton(onPressed: () {}, child: Text("Register")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoginBg extends StatelessWidget {
  final Widget body;
  const LoginBg({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: context.scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(),
              ImageRenderWidget.asset(imagePath: ImagePath.cardFlip),
              Spacer(),
              ImageRenderWidget.asset(imagePath: ImagePath.logoBg),
            ],
          ),
        ),
        body,
      ],
    );
  }
}
