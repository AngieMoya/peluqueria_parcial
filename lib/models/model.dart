// To parse this JSON data, do
//
//     final hairdresserModel = hairdresserModelFromJson(jsonString);

import 'dart:convert';

HairdresserModel hairdresserModelFromJson(String str) =>
    HairdresserModel.fromJson(json.decode(str));

String hairdresserModelToJson(HairdresserModel data) =>
    json.encode(data.toJson());

class Hairdresser {
  List<HairdresserModel> items = [];

  Hairdresser.fromJsonList(jsonList) {
    if (jsonList == null) return;
    for (var elemento in jsonList) {
      final hairdresser = HairdresserModel.fromJson(elemento);
      items.add(hairdresser);
    }
  }
}

class HairdresserModel {
  final String? matricula;
  final String? proponente;
  final String? organizacion;
  final String? estadoDeLaMatricula;
  final String? razonSocial;
  final String? nit;
  final String? fechaRenovacion;
  final String? ultimoAORenovado;
  final String? fechaConstitucion;
  final String? direccionComercial;
  final String? barrioComercial;
  final String? municipioComercial;
  final String? emailComercial;
  final String? ciiu1;
  final String? ciiu2;
  final String? ciiu3;
  final String? ciiu4;
  final String? actividad;
  final String? tamaOEmpresa;
  final String? matriculaPropietario;
  final String? nitPropietario;
  final String? camaraDePropietario;
  final String? nombreDePropietario;
  final String? direccionPropietario;
  final String? municipioPropietario;
  final String? emailPropietario;
  final String? representanteLegalSuplente;

  HairdresserModel({
    this.matricula,
    this.proponente,
    this.organizacion,
    this.estadoDeLaMatricula,
    this.razonSocial,
    this.nit,
    this.fechaRenovacion,
    this.ultimoAORenovado,
    this.fechaConstitucion,
    this.direccionComercial,
    this.barrioComercial,
    this.municipioComercial,
    this.emailComercial,
    this.ciiu1,
    this.ciiu2,
    this.ciiu3,
    this.ciiu4,
    this.actividad,
    this.tamaOEmpresa,
    this.matriculaPropietario,
    this.nitPropietario,
    this.camaraDePropietario,
    this.nombreDePropietario,
    this.direccionPropietario,
    this.municipioPropietario,
    this.emailPropietario,
    this.representanteLegalSuplente,
  });

  factory HairdresserModel.fromJson(Map<String, dynamic> json) =>
      HairdresserModel(
        matricula: json["matricula"],
        proponente: json["proponente"],
        organizacion: json["organizacion"],
        estadoDeLaMatricula: json["estado_de_la_matricula"],
        razonSocial: json["razon_social"],
        nit: json["nit"],
        fechaRenovacion: json["fecha_renovacion"],
        ultimoAORenovado: json["ultimo_a_o_renovado"],
        fechaConstitucion: json["fecha_constitucion"],
        direccionComercial: json["direccion_comercial"],
        barrioComercial: json["barrio_comercial"],
        municipioComercial: json["municipio_comercial"],
        emailComercial: json["email_comercial"],
        ciiu1: json["ciiu_1"],
        ciiu2: json["ciiu_2"],
        ciiu3: json["ciiu_3"],
        ciiu4: json["ciiu_4"],
        actividad: json["actividad"],
        tamaOEmpresa: json["tama_o_empresa"],
        matriculaPropietario: json["matricula_propietario"],
        nitPropietario: json["nit_propietario"],
        camaraDePropietario: json["camara_de_propietario"],
        nombreDePropietario: json["nombre_de_propietario"],
        direccionPropietario: json["direccion_propietario"],
        municipioPropietario: json["municipio_propietario"],
        emailPropietario: json["email_propietario"],
        representanteLegalSuplente: json["representante_legal_suplente"],
      );

  Map<String, dynamic> toJson() => {
        "matricula": matricula,
        "proponente": proponente,
        "organizacion": organizacion,
        "estado_de_la_matricula": estadoDeLaMatricula,
        "razon_social": razonSocial,
        "nit": nit,
        "fecha_renovacion": fechaRenovacion,
        "ultimo_a_o_renovado": ultimoAORenovado,
        "fecha_constitucion": fechaConstitucion,
        "direccion_comercial": direccionComercial,
        "barrio_comercial": barrioComercial,
        "municipio_comercial": municipioComercial,
        "email_comercial": emailComercial,
        "ciiu_1": ciiu1,
        "ciiu_2": ciiu2,
        "ciiu_3": ciiu3,
        "ciiu_4": ciiu4,
        "actividad": actividad,
        "tama_o_empresa": tamaOEmpresa,
        "matricula_propietario": matriculaPropietario,
        "nit_propietario": nitPropietario,
        "camara_de_propietario": camaraDePropietario,
        "nombre_de_propietario": nombreDePropietario,
        "direccion_propietario": direccionPropietario,
        "municipio_propietario": municipioPropietario,
        "email_propietario": emailPropietario,
        "representante_legal_suplente": representanteLegalSuplente,
      };
}
