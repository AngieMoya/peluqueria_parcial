import 'package:flutter/material.dart';
import 'package:peluqueria_parcial/widgets/dropdown_text.dart';
import '../models/model.dart';

class PlacesCard extends StatelessWidget {
  final HairdresserModel hairdresser;
  const PlacesCard({super.key, required this.hairdresser});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
                  'Dirección : ${hairdresser.direccionComercial as String}',
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
                  'Barrio : ${hairdresser.barrioComercial as String}',
                  //_hairdressers[index].barrioComercial as String,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DropDownText(
                activity: hairdresser.actividad as String,
              ),
            ],
          ),
        ));
  }
}
