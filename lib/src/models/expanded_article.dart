import 'package:fandom/src/models/image_size.dart';
import 'package:json_annotation/json_annotation.dart';

import 'revision.dart';

part 'expanded_article.g.dart';

@JsonSerializable(createToJson: false)
class ExpandedArticle {
  /// The original dimensions of the thumbnail for the article, if available
  @JsonKey(name: 'original_dimensions')
  final ImageSize originalDimensions;

  /// The relative URL of the Article. Absolute URL: obtained from combining relative URL with basepath attribute from response
  final String url;

  /// The namespace value of the given article
  final int ns;

  /// A snippet of text from the beginning of the article
  final String abstract;

  /// The absolute URL of the thumbnail
  final String thumbnail;

  /// The latest revision for this article
  final Revision revision;

  /// An internal identification number for Article
  final int id;

  /// The title of the article
  final String title;

  /// The functional type of the document (e.g. article, file, category)
  final String type;

  /// Number of comments on this article
  final int comments;

  ExpandedArticle(
      this.originalDimensions,
      this.url,
      this.ns,
      this.abstract,
      this.thumbnail,
      this.revision,
      this.id,
      this.title,
      this.type,
      this.comments);

  factory ExpandedArticle.fromJson(Map<String, dynamic> json) =>
      _$ExpandedArticleFromJson(json);
}
