import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/view/setting/model/setting_model.dart';

class SettingTuple extends StatelessWidget {
  const SettingTuple({super.key, required this.settingsModel});

  final SettingsModel settingsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                settingsModel.imagePath,
                semanticsLabel: 'My SVG Image',
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    settingsModel.heading,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    settingsModel.title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
