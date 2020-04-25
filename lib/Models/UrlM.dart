class UrlM{
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  UrlM(
    this.raw, 
    this.full, 
    this.regular, 
    this.small, 
    this.thumb
  );
  
  UrlM.fromJson(Map<String, dynamic> json):
    raw = json['raw'].toString(),
    full = json['full'].toString(),
    regular = json['regular'],
    small = json['small'],
    thumb = json['thumb'];

  Map<String, dynamic> toJson() =>{
      'raw': raw,
      'full': full,
      'regular': regular,
      'small': small,
      'thumb': thumb,
  };
  
}