import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/view/auth/blocs/auth_bloc.dart';
import 'package:sample/view/common/setting_tuple.dart';
import 'package:sample/view/setting/blocs/setting_bloc.dart';
import 'package:sample/view/setting/model/setting_model.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingBloc(),
      child: _Settings(),
    );
  }
}

class _Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
            title: Text(
              "Settings",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            leading: const Icon(Icons.arrow_back_ios_sharp),
          ),
          body: BlocBuilder<SettingBloc, SettingState>(
            builder: (context, settingState) {
              return Column(
                children: [
                  SettingTuple(
                    settingsModel: SettingsModel(
                        heading: 'Theme',
                        title: 'Dark Mode',
                        imagePath: 'assets/images/dark.svg'),
                  ) ,
                  SettingTuple(
                    settingsModel: SettingsModel(
                        heading: 'Account',
                        title: 'Sign Out',
                        imagePath: 'assets/images/account.svg'),
                  )
                ],
              );
            },
          )),
    );
  }
}
