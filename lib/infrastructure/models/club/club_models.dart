// lib/models/club_models.dart

/// Modelo base vacío para los clubs.
abstract class BaseClubModel {}

class ClubModel extends BaseClubModel {
  final List<ClubInterno> internos;
  final List<ClubExterno> externos;

  ClubModel({required this.internos, required this.externos});

  ClubModel copyWith({
    List<ClubInterno>? internos,
    List<ClubExterno>? externos,
  }) => ClubModel(
    internos: internos ?? this.internos,
    externos: externos ?? this.externos,
  );

  factory ClubModel.fromJson(Map<String, dynamic> json) => ClubModel(
    internos:
        json["internos"] != null
            ? List<ClubInterno>.from(
              json["internos"].map((x) => ClubInterno.fromJson(x)),
            )
            : [],
    externos:
        json["externos"] != null
            ? List<ClubExterno>.from(
              json["externos"].map((x) => ClubExterno.fromJson(x)),
            )
            : [],
  );

  Map<String, dynamic> toJson() => {
    "internos": List<dynamic>.from(internos.map((x) => x.toJson())),
    "externos": List<dynamic>.from(externos.map((x) => x.toJson())),
  };
}

class ClubInterno {
  final int id;
  final String nombre;
  final String descripcion;
  final String localizacion;
  final double latitud;
  final double longitud;
  final String apertura;
  final String cierre;
  final Provincia provincia;
  final Municipio municipio;
  final TipoClub tipoClub;
  final dynamic codigoComunidad;
  final DateTime fechaCreacion;
  final List<PistasLibre> pistasLibres;
  final String logo;
  final List<Foto> fotos;
  final List<Servicio> servicios;
  final bool esFavorito;
  final double distancia;
  final String telefono;
  final String email;
  final String descripcionInstalaciones;

  ClubInterno({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.localizacion,
    required this.latitud,
    required this.longitud,
    required this.apertura,
    required this.cierre,
    required this.provincia,
    required this.municipio,
    required this.tipoClub,
    this.codigoComunidad,
    required this.fechaCreacion,
    required this.pistasLibres,
    required this.logo,
    required this.fotos,
    required this.servicios,
    required this.esFavorito,
    required this.distancia,
    required this.telefono,
    required this.email,
    required this.descripcionInstalaciones,
  });

  factory ClubInterno.fromJson(Map<String, dynamic> json) => ClubInterno(
    id: json["id"] ?? 0,
    nombre: json["nombre"] ?? "",
    descripcion: json["descripcion"] ?? "",
    localizacion: json["localizacion"] ?? "",
    latitud: (json["latitud"] != null) ? json["latitud"].toDouble() : 0.0,
    longitud: (json["longitud"] != null) ? json["longitud"].toDouble() : 0.0,
    apertura: json["apertura"] ?? "00:00:00",
    cierre: json["cierre"] ?? "00:00:00",
    provincia:
        json["provincia"] != null
            ? Provincia.fromJson(json["provincia"])
            : Provincia(id: 0, nombre: "", abreviatura: ""),
    municipio:
        json["municipio"] != null
            ? Municipio.fromJson(json["municipio"])
            : Municipio(
              id: 0,
              nombre: "",
              provincia: Provincia(id: 0, nombre: "", abreviatura: ""),
            ),
    tipoClub:
        json["tipoClub"] != null
            ? TipoClub.fromJson(json["tipoClub"])
            : TipoClub(id: 0, nombre: ""),
    codigoComunidad: json["codigoComunidad"],
    fechaCreacion:
        json["fecha_Creacion"] != null
            ? DateTime.parse(json["fecha_Creacion"])
            : DateTime.now(),
    pistasLibres:
        json["pistasLibres"] != null
            ? List<PistasLibre>.from(
              json["pistasLibres"].map((x) => PistasLibre.fromJson(x)),
            )
            : [],
    logo: json["logo"] ?? "",
    fotos:
        json["fotos"] != null
            ? List<Foto>.from(json["fotos"].map((x) => Foto.fromJson(x)))
            : [],
    servicios:
        json["servicios"] != null
            ? List<Servicio>.from(
              json["servicios"].map((x) => Servicio.fromJson(x)),
            )
            : [],
    esFavorito: json["esFavorito"] ?? false,
    distancia: (json["distancia"] != null) ? json["distancia"].toDouble() : 0.0,
    telefono: json["telefono"] ?? "",
    email: json["email"] ?? "",
    descripcionInstalaciones: json["descripcionInstalaciones"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "descripcion": descripcion,
    "localizacion": localizacion,
    "latitud": latitud,
    "longitud": longitud,
    "apertura": apertura,
    "cierre": cierre,
    "provincia": provincia.toJson(),
    "municipio": municipio.toJson(),
    "tipoClub": tipoClub.toJson(),
    "codigoComunidad": codigoComunidad,
    "fecha_Creacion": fechaCreacion.toIso8601String(),
    "pistasLibres": List<dynamic>.from(pistasLibres.map((x) => x.toJson())),
    "logo": logo,
    "fotos": List<dynamic>.from(fotos.map((x) => x.toJson())),
    "servicios": List<dynamic>.from(servicios.map((x) => x.toJson())),
    "esFavorito": esFavorito,
    "distancia": distancia,
    "telefono": telefono,
    "email": email,
    "descripcionInstalaciones": descripcionInstalaciones,
  };
}

class ClubExterno {
  final int id;
  final String nombre;
  final double latitud;
  final double longitud;
  final String direccion;
  final double distancia;

  ClubExterno({
    required this.id,
    required this.nombre,
    required this.latitud,
    required this.longitud,
    required this.direccion,
    required this.distancia,
  });

  factory ClubExterno.fromJson(Map<String, dynamic> json) => ClubExterno(
    id: json["id"] ?? 0,
    nombre: json["nombre"] ?? "",
    latitud: (json["latitud"] != null) ? json["latitud"].toDouble() : 0.0,
    longitud: (json["longitud"] != null) ? json["longitud"].toDouble() : 0.0,
    direccion: json["direccion"] ?? "",
    distancia: (json["distancia"] != null) ? json["distancia"].toDouble() : 0.0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "latitud": latitud,
    "longitud": longitud,
    "direccion": direccion,
    "distancia": distancia,
  };
}

class Provincia {
  final int id;
  final String nombre;
  final String abreviatura;

  Provincia({
    required this.id,
    required this.nombre,
    required this.abreviatura,
  });

  factory Provincia.fromJson(Map<String, dynamic> json) => Provincia(
    id: json["id"] ?? 0,
    nombre: json["nombre"] ?? "",
    abreviatura: json["abreviatura"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "abreviatura": abreviatura,
  };
}

class Municipio {
  final int id;
  final String nombre;
  final Provincia provincia;

  Municipio({required this.id, required this.nombre, required this.provincia});

  factory Municipio.fromJson(Map<String, dynamic> json) => Municipio(
    id: json["id"] ?? 0,
    nombre: json["nombre"] ?? "",
    provincia:
        json["provincia"] != null
            ? Provincia.fromJson(json["provincia"])
            : Provincia(id: 0, nombre: "", abreviatura: ""),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "provincia": provincia.toJson(),
  };
}

class TipoClub {
  final int id;
  final String nombre;

  TipoClub({required this.id, required this.nombre});

  factory TipoClub.fromJson(Map<String, dynamic> json) =>
      TipoClub(id: json["id"] ?? 0, nombre: json["nombre"] ?? "");

  Map<String, dynamic> toJson() => {"id": id, "nombre": nombre};
}

class PistasLibre {
  final int id;
  final String nombre;
  final String suelo;
  final String techado;
  final String pared;
  final String foco;
  final dynamic alturaTecho;
  final bool juegoExterior;
  final Jornada jornada;

  PistasLibre({
    required this.id,
    required this.nombre,
    required this.suelo,
    required this.techado,
    required this.pared,
    required this.foco,
    required this.alturaTecho,
    required this.juegoExterior,
    required this.jornada,
  });

  factory PistasLibre.fromJson(Map<String, dynamic> json) => PistasLibre(
    id: json["id"] ?? 0,
    nombre: json["nombre"] ?? "",
    suelo: json["suelo"] ?? "",
    techado: json["techado"] ?? "",
    pared: json["pared"] ?? "",
    foco: json["foco"] ?? "",
    alturaTecho: json["alturaTecho"],
    juegoExterior: json["juegoExterior"] ?? false,
    jornada:
        json["jornada"] != null
            ? Jornada.fromJson(json["jornada"])
            : Jornada(id: 0, comienzo: "", fin: "", horarios: []),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "suelo": suelo,
    "techado": techado,
    "pared": pared,
    "foco": foco,
    "alturaTecho": alturaTecho,
    "juegoExterior": juegoExterior,
    "jornada": jornada.toJson(),
  };
}

class Jornada {
  final int id;
  final String comienzo;
  final String fin;
  final List<Horario> horarios;

  Jornada({
    required this.id,
    required this.comienzo,
    required this.fin,
    required this.horarios,
  });

  factory Jornada.fromJson(Map<String, dynamic> json) => Jornada(
    id: json["id"] ?? 0,
    comienzo: json["comienzo"] ?? "",
    fin: json["fin"] ?? "",
    horarios:
        json["horarios"] != null
            ? List<Horario>.from(
              json["horarios"].map((x) => Horario.fromJson(x)),
            )
            : [],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "comienzo": comienzo,
    "fin": fin,
    "horarios": List<dynamic>.from(horarios.map((x) => x.toJson())),
  };
}

class Horario {
  final int id;
  final String horaComienzo;
  final String horaFin;
  final double precio;
  final int idReserva;

  Horario({
    required this.id,
    required this.horaComienzo,
    required this.horaFin,
    required this.precio,
    required this.idReserva,
  });

  factory Horario.fromJson(Map<String, dynamic> json) => Horario(
    id: json["id"] ?? 0,
    horaComienzo: json["hora_Comienzo"] ?? "00:00:00",
    horaFin: json["hora_Fin"] ?? "00:00:00",
    precio: (json["precio"] != null) ? json["precio"].toDouble() : 0.0,
    idReserva: json["idReserva"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "hora_Comienzo": horaComienzo,
    "hora_Fin": horaFin,
    "precio": precio,
    "idReserva": idReserva,
  };
}

class Foto {
  final int id;
  final String url;
  final bool principal;

  Foto({required this.id, required this.url, required this.principal});

  factory Foto.fromJson(Map<String, dynamic> json) => Foto(
    id: json["id"] ?? 0,
    url: json["url"] ?? "",
    principal: json["principal"] ?? false,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
    "principal": principal,
  };
}

class Servicio {
  final int id;
  final String nombre;
  final String icono;

  Servicio({required this.id, required this.nombre, required this.icono});

  factory Servicio.fromJson(Map<String, dynamic> json) => Servicio(
    id: json["id"] ?? 0,
    nombre: json["nombre"] ?? "",
    icono: json["icono"] ?? "",
  );

  Map<String, dynamic> toJson() => {"id": id, "nombre": nombre, "icono": icono};
}
