// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget InputSection() {
      Widget nameInput() {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: blackTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: "Your full name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: blackTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: "Your email address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: blackTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: "Your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget submitButton() {
        return Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            },
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
            ),
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            InputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
