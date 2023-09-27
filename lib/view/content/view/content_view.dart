import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';

import '../blocs/content_bloc.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContentBloc(),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
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
        body: BlocBuilder<ContentBloc, ContentState>(
          builder: (context, contentState) {
            List<CardItem> items = [
              IconTitleCardItem(
                text: "Alarm",
                iconData: Icons.access_alarms,
              ),
              IconTitleCardItem(
                text: "Add",
                iconData: Icons.add,
              ),
              IconTitleCardItem(
                text: "Call",
                iconData: Icons.add_call,
              ),
              IconTitleCardItem(
                text: "WiFi",
                iconData: Icons.wifi,
              ),
              IconTitleCardItem(
                text: "File",
                iconData: Icons.attach_file,
              ),
              IconTitleCardItem(
                text: "Air Play",
                iconData: Icons.airplay,
              ),
            ];

            return MaterialApp(
              home: Scaffold(
                  body: Center(
                      child: HorizontalCardPager(
                onPageChanged: (page) => print("page : $page"),
                onSelectedItem: (page) => print("selected : $page"),
                items: items,
              ))),
            );
          },
        ),
      ),
    );
  }
}
