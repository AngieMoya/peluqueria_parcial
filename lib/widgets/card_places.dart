import 'package:flutter/material.dart';
import '../models/model.dart';

class PlacesCard extends StatefulWidget {
  PlacesCard({super.key, required hairdresser});

  @override
  State<PlacesCard> createState() => _PlacesCardState();
}

class _PlacesCardState extends State<PlacesCard> {
  late final HairdresserModel hairdresser;
  bool _isVisible = false; // Inicialmente, el widget estará oculto.
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    textAlign: TextAlign.center,
                    hairdresser.razonSocial as String,
                    //_hairdressers[index].razonSocial as String,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  hairdresser.direccionComercial as String,
                  //_hairdressers[index].direccionComercial as String,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  hairdresser.barrioComercial as String,
                  //_hairdressers[index].barrioComercial as String,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12, bottom: 12),
                child: TextButton(
                    onPressed: () {
                      print(_isVisible);
                      setState(() {
                        _isVisible =
                            !_isVisible; // Cambia la visibilidad al hacer clic.
                      });
                    },
                    child: Row(
                      children: const [
                        Text(
                          'Servicios',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.expand_more)
                      ],
                    )),
              ),
              Visibility(
                  visible: _isVisible,
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          hairdresser.actividad as String,
                          //_hairdressers[index].actividad as String,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
