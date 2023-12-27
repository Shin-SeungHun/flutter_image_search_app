class PixabayDto {
  num? total;
  num? totalHits;
  List<Hits>? hits;

//<editor-fold desc="Data Methods">
  PixabayDto({
    this.total,
    this.totalHits,
    this.hits,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PixabayDto &&
          runtimeType == other.runtimeType &&
          total == other.total &&
          totalHits == other.totalHits &&
          hits == other.hits);

  @override
  int get hashCode => total.hashCode ^ totalHits.hashCode ^ hits.hashCode;

  PixabayDto copyWith({
    num? total,
    num? totalHits,
    List<Hits>? hits,
  }) {
    return PixabayDto(
      total: total ?? this.total,
      totalHits: totalHits ?? this.totalHits,
      hits: hits ?? this.hits,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'totalHits': totalHits,
      'hits': hits,
    };
  }

  factory PixabayDto.fromJson(Map<String, dynamic> map) {
    return PixabayDto(
      total: map['total'] as num,
      totalHits: map['totalHits'] as num,
      hits: map['hits'] as List<Hits>,
    );
  }

  @override
  String toString() {
    return 'PixabayDto{ total: $total, totalHits: $totalHits, hits: $hits,}';
  }
//</editor-fold>
}

class Hits {
  num? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  num? previewWidth;
  num? previewHeight;
  String? webformatURL;
  num? webformatWidth;
  num? webformatHeight;
  String? largeImageURL;
  num? imageWidth;
  num? imageHeight;
  num? imageSize;
  num? views;
  num? downloads;
  num? collections;
  num? likes;
  num? comments;
  num? userId;
  String? user;
  String? userImageURL;

//<editor-fold desc="Data Methods">
  Hits({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.collections,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageURL,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Hits &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          pageURL == other.pageURL &&
          type == other.type &&
          tags == other.tags &&
          previewURL == other.previewURL &&
          previewWidth == other.previewWidth &&
          previewHeight == other.previewHeight &&
          webformatURL == other.webformatURL &&
          webformatWidth == other.webformatWidth &&
          webformatHeight == other.webformatHeight &&
          largeImageURL == other.largeImageURL &&
          imageWidth == other.imageWidth &&
          imageHeight == other.imageHeight &&
          imageSize == other.imageSize &&
          views == other.views &&
          downloads == other.downloads &&
          collections == other.collections &&
          likes == other.likes &&
          comments == other.comments &&
          userId == other.userId &&
          user == other.user &&
          userImageURL == other.userImageURL);

  @override
  int get hashCode =>
      id.hashCode ^
      pageURL.hashCode ^
      type.hashCode ^
      tags.hashCode ^
      previewURL.hashCode ^
      previewWidth.hashCode ^
      previewHeight.hashCode ^
      webformatURL.hashCode ^
      webformatWidth.hashCode ^
      webformatHeight.hashCode ^
      largeImageURL.hashCode ^
      imageWidth.hashCode ^
      imageHeight.hashCode ^
      imageSize.hashCode ^
      views.hashCode ^
      downloads.hashCode ^
      collections.hashCode ^
      likes.hashCode ^
      comments.hashCode ^
      userId.hashCode ^
      user.hashCode ^
      userImageURL.hashCode;

  Hits copyWith({
    num? id,
    String? pageURL,
    String? type,
    String? tags,
    String? previewURL,
    num? previewWidth,
    num? previewHeight,
    String? webformatURL,
    num? webformatWidth,
    num? webformatHeight,
    String? largeImageURL,
    num? imageWidth,
    num? imageHeight,
    num? imageSize,
    num? views,
    num? downloads,
    num? collections,
    num? likes,
    num? comments,
    num? userId,
    String? user,
    String? userImageURL,
  }) {
    return Hits(
      id: id ?? this.id,
      pageURL: pageURL ?? this.pageURL,
      type: type ?? this.type,
      tags: tags ?? this.tags,
      previewURL: previewURL ?? this.previewURL,
      previewWidth: previewWidth ?? this.previewWidth,
      previewHeight: previewHeight ?? this.previewHeight,
      webformatURL: webformatURL ?? this.webformatURL,
      webformatWidth: webformatWidth ?? this.webformatWidth,
      webformatHeight: webformatHeight ?? this.webformatHeight,
      largeImageURL: largeImageURL ?? this.largeImageURL,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
      imageSize: imageSize ?? this.imageSize,
      views: views ?? this.views,
      downloads: downloads ?? this.downloads,
      collections: collections ?? this.collections,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      userId: userId ?? this.userId,
      user: user ?? this.user,
      userImageURL: userImageURL ?? this.userImageURL,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pageURL': pageURL,
      'type': type,
      'tags': tags,
      'previewURL': previewURL,
      'previewWidth': previewWidth,
      'previewHeight': previewHeight,
      'webformatURL': webformatURL,
      'webformatWidth': webformatWidth,
      'webformatHeight': webformatHeight,
      'largeImageURL': largeImageURL,
      'imageWidth': imageWidth,
      'imageHeight': imageHeight,
      'imageSize': imageSize,
      'views': views,
      'downloads': downloads,
      'collections': collections,
      'likes': likes,
      'comments': comments,
      'userId': userId,
      'user': user,
      'userImageURL': userImageURL,
    };
  }

  factory Hits.fromJson(Map<String, dynamic> map) {
    return Hits(
      id: map['id'] as num,
      pageURL: map['pageURL'] as String,
      type: map['type'] as String,
      tags: map['tags'] as String,
      previewURL: map['previewURL'] as String,
      previewWidth: map['previewWidth'] as num,
      previewHeight: map['previewHeight'] as num,
      webformatURL: map['webformatURL'] as String,
      webformatWidth: map['webformatWidth'] as num,
      webformatHeight: map['webformatHeight'] as num,
      largeImageURL: map['largeImageURL'] as String,
      imageWidth: map['imageWidth'] as num,
      imageHeight: map['imageHeight'] as num,
      imageSize: map['imageSize'] as num,
      views: map['views'] as num,
      downloads: map['downloads'] as num,
      collections: map['collections'] as num,
      likes: map['likes'] as num,
      comments: map['comments'] as num,
      userId: map['userId'] as num,
      user: map['user'] as String,
      userImageURL: map['userImageURL'] as String,
    );
  }

  @override
  String toString() {
    return 'Hits{ id: $id, pageURL: $pageURL, type: $type, tags: $tags, previewURL: $previewURL, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatURL: $webformatURL, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageURL: $largeImageURL, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, collections: $collections, likes: $likes, comments: $comments, userId: $userId, user: $user, userImageURL: $userImageURL,}';
  }

//</editor-fold>
}
