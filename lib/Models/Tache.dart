final String tableTaches = 'taches';

class TacheFields {
  static final List<String> values = [
    nom, active, horaire
  ];

  static final String nom = 'nom';
  static final String active = 'active';
  static final String horaire = 'horaire';
}

class Tache {
  final String nom;
  final bool active;
  final DateTime horaire;

  const Tache({
    required this.nom,
    required this.active,
    required this.horaire
  });

  Tache copy({
    String? nom,
    bool? active,
    DateTime? horaire
  }) => Tache(
    nom: nom ?? this.nom,
    active: active ?? this.active,
    horaire: horaire ?? this.horaire
  );

  static Tache fromJson(Map<String, Object?> json) => Tache(
    nom: json[TacheFields.nom] as String,
    active: json[TacheFields.active] == 1,
    horaire: DateTime.parse(json[TacheFields.horaire] as String)
  );

  Map<String, Object?> toJson() => {
    TacheFields.nom: nom,
    TacheFields.active: active,
    TacheFields.horaire: horaire
  };
}