import 'Jour.dart';

final String tableTaches = 'taches';

class TacheFields {
  static final List<String> values = [
    id, nom, active, horaire, jours
  ];

  static final String id = 'id';
  static final String nom = 'nom';
  static final String active = 'active';
  static final String horaire = 'horaire';
  static final String jours = 'jours';
}

class Tache {
  final int id;
  final String nom;
  final bool active;
  final DateTime horaire;
  final List<Jour> jours;

  const Tache({
    required this.id,
    required this.nom,
    required this.active,
    required this.horaire,
    required this.jours
  });

  Tache copy({
    int? id,
    String? nom,
    bool? active,
    DateTime? horaire,
    List<Jour>? jours,
  }) => Tache(
    id: id ?? this.id,
    nom: nom ?? this.nom,
    active: active ?? this.active,
    horaire: horaire ?? this.horaire,
    jours: jours ?? this.jours
  );

  static Tache fromJson(Map<String, Object?> json) => Tache(
    id: json[TacheFields.id] as int,
    nom: json[TacheFields.nom] as String,
    active: json[TacheFields.active] == 1,
    horaire: DateTime.parse(json[TacheFields.horaire] as String),
    jours: json[TacheFields.jours] as List<Jour>
  );

  Map<String, Object?> toJson() => {
    TacheFields.id: id,
    TacheFields.nom: nom,
    TacheFields.active: active,
    TacheFields.horaire: horaire,
    TacheFields.jours: jours
  };
}