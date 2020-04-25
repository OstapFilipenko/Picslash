class ProfileImage{
  final String small;
  final String medium;
  final String large;

  ProfileImage(
    this.small, 
    this.medium, 
    this.large
  );

  ProfileImage.fromJson(Map<String, dynamic> json):
    small = json['small'].toString(),
    medium = json['medium'].toString(),
    large = json['large'];

  Map<String, dynamic> toJson() =>{
      'small': small,
      'medium': medium,
      'large': large
  };  
}