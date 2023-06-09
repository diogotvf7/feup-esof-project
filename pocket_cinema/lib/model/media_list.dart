import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pocket_cinema/model/media.dart';

class MediaList {
  final String id;
  final String name;
  final List<Media> media;
  Timestamp createdAt;
  Timestamp lastUpdatedAt;
  MediaList({required this.id, required this.name, required this.media, required this.createdAt, required this.lastUpdatedAt});
}
