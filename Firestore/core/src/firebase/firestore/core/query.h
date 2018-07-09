/*
 * Copyright 2018 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef FIRESTORE_CORE_SRC_FIREBASE_FIRESTORE_CORE_QUERY_H_
#define FIRESTORE_CORE_SRC_FIREBASE_FIRESTORE_CORE_QUERY_H_

#include <utility>

#include "Firestore/core/src/firebase/firestore/model/document.h"
#include "Firestore/core/src/firebase/firestore/model/resource_path.h"

namespace firebase {
namespace firestore {
namespace core {

/** Represents the internal structure of a Firestore Query. */
class Query {
 public:
  /**
   * Creates and returns a new Query.
   *
   * @param path The path to the collection to be queried over.
   * @return A new instance of Query.
   */
  static Query AtPath(model::ResourcePath path) {
    return Query(std::move(path));
  }

  /** Initializes a query with all of its components directly. */
  explicit Query(model::ResourcePath path /* TODO(rsgowman): other params */)
      : path_(std::move(path)) {
  }

  const model::ResourcePath& path() const {
    return path_;
  }

  /** Returns true if the document matches the constraints of this query. */
  bool Matches(const model::Document& doc) const;

 private:
  bool MatchesPath(const model::Document& doc) const;
  bool MatchesFilters(const model::Document& doc) const;
  bool MatchesOrderBy(const model::Document& doc) const;
  bool MatchesBounds(const model::Document& doc) const;

  const model::ResourcePath path_;
};

}  // namespace core
}  // namespace firestore
}  // namespace firebase

#endif  // FIRESTORE_CORE_SRC_FIREBASE_FIRESTORE_CORE_QUERY_H_