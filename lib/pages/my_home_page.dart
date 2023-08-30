import 'package:flutter/material.dart';
import 'package:peluqueria_parcial/widgets/card_places.dart';
import '../models/model.dart';
import '../providers/hair_style_providers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<HairdresserModel> _hairdressers = [];

  bool isLoading = false;

  _getHairdressers() async {
    setState(() {
      isLoading = true;
    });
    final hairdresserList = await HairdresserProvider().getHairdressers();
    for (var hairdresser in hairdresserList) {
      print(hairdresser);
      _hairdressers.add(hairdresser);
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getHairdressers();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          leading: const Icon(Icons.content_cut),
          title: Text(widget.title),
        ),
        body: SafeArea(
            child: ListView.separated(
          itemCount: _hairdressers.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 5,
          ),
          itemBuilder: (context, index) {
            if (isLoading) {
              return const CircularProgressIndicator();
            }
            return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PlacesCard(hairdresser: _hairdressers));
          },
        )));
  }
}
