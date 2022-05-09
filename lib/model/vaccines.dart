class Vaccines {
  int id;
  String? manufacturer;
  String? batch;
  String? expirationDate;
  String? validity;
  String? drResponsible;

  Vaccines(
      {this.manufacturer,
      this.batch,
      this.drResponsible,
      this.expirationDate,
      this.validity,
      required this.id});

  Vaccines.fromJson(Map<String, dynamic> json)
      : manufacturer = json['manufacturer'],
        id = json['id'],
        batch = json['batch'],
        expirationDate = json['expirationDate'],
        validity = json['validity'],
        drResponsible = json['drResponsible'];

  Map<String, dynamic> toJson() => {
        'manufacturer': manufacturer,
        'batch': batch,
        'expirationDate': expirationDate,
        'validity': validity,
        'drResponsible': drResponsible,
        'id': id
      };
}
