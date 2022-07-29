import 'package:flutter/material.dart';
import 'package:mmh_demo/presentation/widget/name_titile_widget.dart';
import 'package:mmh_demo/route/app_route.dart';
import 'package:mmh_demo/theme/theme.dart';
import 'package:mmh_demo/util/constant/string.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
        iconTheme:
            Theme.of(context).iconTheme.copyWith(size: activeTheme.sizeUnitXXL),
      ),
      body: Padding(
        padding: EdgeInsets.all(activeTheme.paddingXL),
        child: SingleChildScrollView(
          child: Form(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: NameTitleWidget(),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: firstName,
                ),
              ),
              SizedBox(
                height: activeTheme.marginL,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: middleName),
              ),
              SizedBox(
                height: activeTheme.marginL,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: lastName),
              ),
              SizedBox(
                height: activeTheme.marginL,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: dateOfBirth),
              ),
              SizedBox(
                height: activeTheme.marginL,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: cPassword),
              ),
              SizedBox(
                height: activeTheme.marginL,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: phoneNumber),
              ),
              SizedBox(
                height: activeTheme.marginL,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: gender),
              ),
              SizedBox(
                height: activeTheme.marginL,
              ),
              SizedBox(
                height: activeTheme.marginXXXL,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, successRoute),
                  child: const Text(createAccount)),
              SizedBox(
                height: activeTheme.marginXXL,
              ),
              Text(byTapping, style: Theme.of(context).textTheme.bodyText1),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: acceptAll,
                    style: Theme.of(context).textTheme.bodyText1),
                const TextSpan(text: ' '),
                TextSpan(
                    text: termAndCondition,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: activeTheme.indigo))
              ]))
            ],
          )),
        ),
      ),
    );
  }
}
