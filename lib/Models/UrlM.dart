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
    raw = json['raw'] == null ? "null" : json['raw'],
    full = json['full'] == null ? "null" : json['full'],
    regular = json['regular'] == null ? "null" : json['regular'],
    small = json['small'] == null ? "null" : json['small'],
    thumb = json['thumb'] == null ? "null" : json['thumb'];

  Map<String, dynamic> toJson() =>{
      'raw': raw,
      'full': full,
      'regular': regular,
      'small': small,
      'thumb': thumb,
  };
  
}