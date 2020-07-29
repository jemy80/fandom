// Copyright (c) 2020, Mattias Karlsson. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

import 'package:fandom/src/models/result_set.dart';
import 'package:json_annotation/json_annotation.dart';

import 'most_linked_expanded_article.dart';

part 'most_linked_expanded_article_result_set.g.dart';

@JsonSerializable(createToJson: false)
class MostLinkedExpandedArticleResultSet
    extends ResultSet<MostLinkedExpandedArticle> {
  MostLinkedExpandedArticleResultSet(
      List<MostLinkedExpandedArticle> items, String basePath)
      : super(items, basePath);

  factory MostLinkedExpandedArticleResultSet.fromJson(
          Map<String, dynamic> json) =>
      _$MostLinkedExpandedArticleResultSetFromJson(json);
}
