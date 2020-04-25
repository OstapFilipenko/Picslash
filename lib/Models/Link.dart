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
    self = json['self'].toString(),
    html = json['html'].toString(),
    download = json['download'],
    download_location = json['download_location'];

  Map<String, dynamic> toJson() =>{
      'self': self,
      'html': html,
      'download': download,
      'download_location':download_location,
  };  
}