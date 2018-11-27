// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: FirebaseSDKs.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// A list of all Firebase SDKs.
struct ZipBuilder_FirebaseSDKs {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sdk: [ZipBuilder_SDK] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Represents a single SDK that should be released.
struct ZipBuilder_SDK {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// SDK name
  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// MPM name for the blueprint. For internal use only.
  var mpmName: String {
    get {return _storage._mpmName}
    set {_uniqueStorage()._mpmName = newValue}
  }

  /// Public version
  var publicVersion: String {
    get {return _storage._publicVersion}
    set {_uniqueStorage()._publicVersion = newValue}
  }

  /// List of MPM patterns to build
  var mpmPattern: [String] {
    get {return _storage._mpmPattern}
    set {_uniqueStorage()._mpmPattern = newValue}
  }

  /// An optional list of additional build flags. For internal use only.
  var buildFlags: ZipBuilder_BuildFlag {
    get {return _storage._buildFlags ?? ZipBuilder_BuildFlag()}
    set {_uniqueStorage()._buildFlags = newValue}
  }
  /// Returns true if `buildFlags` has been explicitly set.
  var hasBuildFlags: Bool {return _storage._buildFlags != nil}
  /// Clears the value of `buildFlags`. Subsequent reads from it will return its default value.
  mutating func clearBuildFlags() {_uniqueStorage()._buildFlags = nil}

  /// List of MPM patterns to build (optional nightly override). For internal use only.
  var nightlyMpmPattern: [String] {
    get {return _storage._nightlyMpmPattern}
    set {_uniqueStorage()._nightlyMpmPattern = newValue}
  }

  /// Whether or not the SDK is built from open-source. For internal use only.
  var openSource: Bool {
    get {return _storage._openSource}
    set {_uniqueStorage()._openSource = newValue}
  }

  /// Whether or not to strip the i386 architecture from the build.
  var stripI386: Bool {
    get {return _storage._stripI386}
    set {_uniqueStorage()._stripI386 = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Any extra build flags needed to build the SDK. For internal use only.
struct ZipBuilder_BuildFlag {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// An additional build flag needed to build the SDK
  var flag: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ZipBuilder"

extension ZipBuilder_FirebaseSDKs: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".FirebaseSDKs"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sdk"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.sdk)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sdk.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.sdk, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ZipBuilder_FirebaseSDKs, rhs: ZipBuilder_FirebaseSDKs) -> Bool {
    if lhs.sdk != rhs.sdk {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ZipBuilder_SDK: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SDK"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "mpm_name"),
    3: .standard(proto: "public_version"),
    4: .standard(proto: "mpm_pattern"),
    5: .standard(proto: "build_flags"),
    6: .standard(proto: "nightly_mpm_pattern"),
    7: .standard(proto: "open_source"),
    8: .standard(proto: "strip_i386"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _mpmName: String = String()
    var _publicVersion: String = String()
    var _mpmPattern: [String] = []
    var _buildFlags: ZipBuilder_BuildFlag? = nil
    var _nightlyMpmPattern: [String] = []
    var _openSource: Bool = false
    var _stripI386: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _mpmName = source._mpmName
      _publicVersion = source._publicVersion
      _mpmPattern = source._mpmPattern
      _buildFlags = source._buildFlags
      _nightlyMpmPattern = source._nightlyMpmPattern
      _openSource = source._openSource
      _stripI386 = source._stripI386
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeSingularStringField(value: &_storage._mpmName)
        case 3: try decoder.decodeSingularStringField(value: &_storage._publicVersion)
        case 4: try decoder.decodeRepeatedStringField(value: &_storage._mpmPattern)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._buildFlags)
        case 6: try decoder.decodeRepeatedStringField(value: &_storage._nightlyMpmPattern)
        case 7: try decoder.decodeSingularBoolField(value: &_storage._openSource)
        case 8: try decoder.decodeSingularBoolField(value: &_storage._stripI386)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if !_storage._mpmName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._mpmName, fieldNumber: 2)
      }
      if !_storage._publicVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._publicVersion, fieldNumber: 3)
      }
      if !_storage._mpmPattern.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._mpmPattern, fieldNumber: 4)
      }
      if let v = _storage._buildFlags {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._nightlyMpmPattern.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._nightlyMpmPattern, fieldNumber: 6)
      }
      if _storage._openSource != false {
        try visitor.visitSingularBoolField(value: _storage._openSource, fieldNumber: 7)
      }
      if _storage._stripI386 != false {
        try visitor.visitSingularBoolField(value: _storage._stripI386, fieldNumber: 8)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ZipBuilder_SDK, rhs: ZipBuilder_SDK) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._mpmName != rhs_storage._mpmName {return false}
        if _storage._publicVersion != rhs_storage._publicVersion {return false}
        if _storage._mpmPattern != rhs_storage._mpmPattern {return false}
        if _storage._buildFlags != rhs_storage._buildFlags {return false}
        if _storage._nightlyMpmPattern != rhs_storage._nightlyMpmPattern {return false}
        if _storage._openSource != rhs_storage._openSource {return false}
        if _storage._stripI386 != rhs_storage._stripI386 {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ZipBuilder_BuildFlag: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BuildFlag"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "flag"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedStringField(value: &self.flag)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.flag.isEmpty {
      try visitor.visitRepeatedStringField(value: self.flag, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ZipBuilder_BuildFlag, rhs: ZipBuilder_BuildFlag) -> Bool {
    if lhs.flag != rhs.flag {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
