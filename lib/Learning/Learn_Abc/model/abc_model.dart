class Abc{
  String? image,pronounce,f1image,f1name,f2image,f2name,pronounce_f1name,pronounce_f2name;

  Abc({
    this.image,
    this.pronounce,
    this.f1image,
    this.f1name,
    this.pronounce_f1name,
    this.f2image,
    this.f2name,
    this.pronounce_f2name,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': this.image,
      'pronounce': this.pronounce,
      'f1image': this.f1image,
      'f1name': this.f1name,
      'pronounce_f1name':this.pronounce_f1name,
      'f2image': this.f2image,
      'f2name': this.f2name,
      'pronounce_f2name':this.pronounce_f2name,
    };
  }

  factory Abc.fromMap(Map<String, dynamic> map) {
    return Abc(
      image: map['image'] as String,
      pronounce: map['pronounce'] as String,
      f1image: map['f1image'] as String,
      f1name: map['f1name'] as String,
      pronounce_f1name: map['pronounce_f1name'] as String,
      f2image: map['f2image'] as String,
      f2name: map['f2name'] as String,
      pronounce_f2name: map['pronounce_f2name'] as String,
    );
  }

  @override
  String toString() {
    return 'Abc{image: $image, pronounce: $pronounce, f1image: $f1image, f1name: $f1name, f2image: $f2image, f2name: $f2name,pronounce_f2name:$pronounce_f1name,pronounce_f2name:$pronounce_f2name}';
  }
}