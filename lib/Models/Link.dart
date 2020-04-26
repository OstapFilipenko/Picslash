class Link{
  final String self;
  final String html;
  final String download;
  final String download_location;

  Link(
    this.self, 
    this.html, 
    this.download, 
    this.download_location
  );

  Link.fromJson(Map<String, dynamic> json):
    self = json['self'] == null ? "null" : json['self'],
    html = json['html'] == null ? "null" : json['html'],
    download = json['download'] == null ? "null" : json['download'],
    download_location = json['download_location'] == null ? "null" : json['download_location'];

  Map<String, dynamic> toJson() =>{
      'self': self,
      'html': html,
      'download': download,
      'download_location':download_location,
  };  
}