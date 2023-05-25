class Counting{
String? counting,spell_counting,spell_counting_pronounce,counted_images,counted_images_pronunce;

Counting({
    this.counting,

    this.spell_counting,
    this.spell_counting_pronounce,
    this.counted_images,
    this.counted_images_pronunce,
  });

Map<String, dynamic> toMap() {
    return {
      'counting': this.counting,
      'spell_counting': this.spell_counting,
      'spell_counting_pronounce': this.spell_counting_pronounce,
      'counted_images': this.counted_images,
      'counted_images_pronunce': this.counted_images_pronunce,
    };
  }

  factory Counting.fromMap(Map<String, dynamic> map) {
    return Counting(
      counting: map['counting'] as String,
      spell_counting: map['spell_counting'] as String,
      spell_counting_pronounce:
          map['spell_counting_pronounce'] as String,
      counted_images: map['counted_images'] as String,
      counted_images_pronunce: map['counted_images_pronunce'] as String,
    );
  }

@override
  String toString() {
    return 'Counting{counting: $counting, spell_counting: $spell_counting, spell_counting_pronounce: $spell_counting_pronounce, counted_images: $counted_images, counted_images_pronunce: $counted_images_pronunce}';
  }
}