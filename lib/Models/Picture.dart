import 'package:picslash/Models/Link.dart';
import 'package:picslash/Models/UrlM.dart';
import 'package:picslash/Models/User.dart';

class Picture{
  final String id;
  final String created_at;
  final String updated_at;
  final String promoted_at;
  final int width;
  final int height;
  final String color;
  final String description;
  final String alt_description;
  final UrlM urls;
  final Link links;
  final int likes;
  final User user;

  Picture(
    this.id, 
    this.created_at, 
    this.updated_at, 
    this.promoted_at, 
    this.width, 
    this.height, 
    this.color, 
    this.description, 
    this.alt_description, 
    this.urls, 
    this.links, 
    this.likes, 
    this.user
  );

  Picture.fromJson(Map<String, dynamic> json):
    id = json['id'],
    created_at = json['created_at'],
    updated_at = json['updated_at'],
    promoted_at = json['promoted_at'],
    width = json['width'],
    height = json['height'],
    color = json['color'] == null ? "null" : json['color'],
    description = json['description'] == null ? "null" : json['description'],
    alt_description = json['alt_description'] == null ? "null" : json['alt_description'],
    urls = UrlM.fromJson(json['urls']),
    links = Link.fromJson(json['links']),
    likes = json['likes'],
    user = User.fromJson(json['user']);

  Map<String, dynamic> toJson() =>{
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'promoted_at':promoted_at,
      'width': width,
      'height': height,
      'color': color,
      'description':description,
      'alt_description': alt_description,
      'urls': urls,
      'links': links,
      'likes':likes,
      'user': user,
  };

  
}