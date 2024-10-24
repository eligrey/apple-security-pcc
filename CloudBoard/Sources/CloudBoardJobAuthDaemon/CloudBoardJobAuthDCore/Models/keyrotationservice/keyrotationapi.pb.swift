// Copyright © 2024 Apple Inc. All Rights Reserved.

// APPLE INC.
// PRIVATE CLOUD COMPUTE SOURCE CODE INTERNAL USE LICENSE AGREEMENT
// PLEASE READ THE FOLLOWING PRIVATE CLOUD COMPUTE SOURCE CODE INTERNAL USE LICENSE AGREEMENT (“AGREEMENT”) CAREFULLY BEFORE DOWNLOADING OR USING THE APPLE SOFTWARE ACCOMPANYING THIS AGREEMENT(AS DEFINED BELOW). BY DOWNLOADING OR USING THE APPLE SOFTWARE, YOU ARE AGREEING TO BE BOUND BY THE TERMS OF THIS AGREEMENT. IF YOU DO NOT AGREE TO THE TERMS OF THIS AGREEMENT, DO NOT DOWNLOAD OR USE THE APPLE SOFTWARE. THESE TERMS AND CONDITIONS CONSTITUTE A LEGAL AGREEMENT BETWEEN YOU AND APPLE.
// IMPORTANT NOTE: BY DOWNLOADING OR USING THE APPLE SOFTWARE, YOU ARE AGREEING ON YOUR OWN BEHALF AND/OR ON BEHALF OF YOUR COMPANY OR ORGANIZATION TO THE TERMS OF THIS AGREEMENT.
// 1. As used in this Agreement, the term “Apple Software” collectively means and includes all of the Apple Private Cloud Compute materials provided by Apple here, including but not limited to the Apple Private Cloud Compute software, tools, data, files, frameworks, libraries, documentation, logs and other Apple-created materials. In consideration for your agreement to abide by the following terms, conditioned upon your compliance with these terms and subject to these terms, Apple grants you, for a period of ninety (90) days from the date you download the Apple Software, a limited, non-exclusive, non-sublicensable license under Apple’s copyrights in the Apple Software to download, install, compile and run the Apple Software internally within your organization only on a single Apple-branded computer you own or control, for the sole purpose of verifying the security and privacy characteristics of Apple Private Cloud Compute. This Agreement does not allow the Apple Software to exist on more than one Apple-branded computer at a time, and you may not distribute or make the Apple Software available over a network where it could be used by multiple devices at the same time. You may not, directly or indirectly, redistribute the Apple Software or any portions thereof. The Apple Software is only licensed and intended for use as expressly stated above and may not be used for other purposes or in other contexts without Apple's prior written permission. Except as expressly stated in this notice, no other rights or licenses, express or implied, are granted by Apple herein.
// 2. The Apple Software is provided by Apple on an "AS IS" basis. APPLE MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS, SYSTEMS, OR SERVICES. APPLE DOES NOT WARRANT THAT THE APPLE SOFTWARE WILL MEET YOUR REQUIREMENTS, THAT THE OPERATION OF THE APPLE SOFTWARE WILL BE UNINTERRUPTED OR ERROR-FREE, THAT DEFECTS IN THE APPLE SOFTWARE WILL BE CORRECTED, OR THAT THE APPLE SOFTWARE WILL BE COMPATIBLE WITH FUTURE APPLE PRODUCTS, SOFTWARE OR SERVICES. NO ORAL OR WRITTEN INFORMATION OR ADVICE GIVEN BY APPLE OR AN APPLE AUTHORIZED REPRESENTATIVE WILL CREATE A WARRANTY.
// 3. IN NO EVENT SHALL APPLE BE LIABLE FOR ANY DIRECT, SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, COMPILATION OR OPERATION OF THE APPLE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 4. This Agreement is effective until terminated. Your rights under this Agreement will terminate automatically without notice from Apple if you fail to comply with any term(s) of this Agreement. Upon termination, you agree to cease all use of the Apple Software and destroy all copies, full or partial, of the Apple Software. This Agreement constitutes the entire understanding of the parties with respect to the subject matter contained herein, and supersedes all prior negotiations, representations, or understandings, written or oral. This Agreement will be governed and construed in accordance with the laws of the State of California, without regard to its choice of law rules.
// You may report security issues about Apple products to product-security@apple.com, as described here: https://www.apple.com/support/security/. Non-security bugs and enhancement requests can be made via https://bugreport.apple.com as described here: https://developer.apple.com/bug-reporting/
// EA1937
// 10/02/2024

// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: keyrotationservice/keyrotationapi.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Modified removing unnecessary information from:
// https://github.pie.apple.com/CAE/edge-proto/blob/main/proto/src/main/proto/keyrotationservice/keyrotationapi.proto

import Foundation
import InternalSwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: InternalSwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: InternalSwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum AssetType: InternalSwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case keyPair // = 0
  case publicKey // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .keyPair
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .keyPair
    case 1: self = .publicKey
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .keyPair: return 0
    case .publicKey: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [AssetType] = [
    .keyPair,
    .publicKey,
  ]

}

enum ErrorCode: InternalSwiftProtobuf.Enum, Swift.CaseIterable {
  typealias RawValue = Int
  case reserved // = 0

  /// 4xx
  case badRequest // = 400

  /// Although the HTTP standard specifies "unauthorized", semantically this response means "unauthenticated". That is, the client must authenticate itself to get the requested response.
  case unauthorized // = 401

  /// For mTLS entitlement for Service Client does not allow access to the asset being requested
  case forbidden // = 403

  /// No key match the time duration given
  case notFound // = 404

  /// use_case or asset_type is not allowed
  case methodNotAllowed // = 405

  /// Key storage is reachable, but Key Rotation timed out in storage Read operation
  case requestTimeout // = 408

  /// Client is sending too many requests, signal it to slow down
  case tooManyRequests // = 429

  /// 5xx
  case internalServerError // = 500

  /// Unexpected inconsistency. Key Rotation is shutting down. Go away.
  case serviceUnavailable // = 503
  case UNRECOGNIZED(Int)

  init() {
    self = .reserved
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .reserved
    case 400: self = .badRequest
    case 401: self = .unauthorized
    case 403: self = .forbidden
    case 404: self = .notFound
    case 405: self = .methodNotAllowed
    case 408: self = .requestTimeout
    case 429: self = .tooManyRequests
    case 500: self = .internalServerError
    case 503: self = .serviceUnavailable
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .reserved: return 0
    case .badRequest: return 400
    case .unauthorized: return 401
    case .forbidden: return 403
    case .notFound: return 404
    case .methodNotAllowed: return 405
    case .requestTimeout: return 408
    case .tooManyRequests: return 429
    case .internalServerError: return 500
    case .serviceUnavailable: return 503
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [ErrorCode] = [
    .reserved,
    .badRequest,
    .unauthorized,
    .forbidden,
    .notFound,
    .methodNotAllowed,
    .requestTimeout,
    .tooManyRequests,
    .internalServerError,
    .serviceUnavailable,
  ]

}

struct AssetRequest: Sendable {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  ///{use_case, asset_type} tuple uniquely identify the asset.
  ///- use_case is an identifier that describes what this asset is intended to be used for.
  ///- asset_type in combination with Service Client's identity and use_case will go through authorization check.
  var useCase: String = String()

  /// [Required] See {@code AssetType} enum
  var assetType: AssetType = .keyPair

  /// ====== Server Internal Use Only (Client Identity from Client's Certificates). ======
  /// Service Client should ignore this field
  /// gRPC ServerInterceptor in Key Rotation Service extracts identities from client certificate and pass it to
  /// application level. This is the only way to pass the information.
  var identities: [String] = []

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}
}

struct AssetResponse: Sendable {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: AssetResponse.OneOf_Result? = nil

  var assets: Assets {
    get {
      if case .assets(let v)? = result {return v}
      return Assets()
    }
    set {result = .assets(newValue)}
  }

  var error: Error {
    get {
      if case .error(let v)? = result {return v}
      return Error()
    }
    set {result = .error(newValue)}
  }

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  enum OneOf_Result: Equatable, Sendable {
    case assets(Assets)
    case error(Error)

  }

  init() {}
}

struct Assets: Sendable {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var assetBundle: [AssetBundle] = []

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}
}

struct AssetBundle: Sendable {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var asset: AssetBundle.OneOf_Asset? = nil

  var keyPair: KeyPairAsset {
    get {
      if case .keyPair(let v)? = asset {return v}
      return KeyPairAsset()
    }
    set {asset = .keyPair(newValue)}
  }

  var publicKey: PublicKeyAsset {
    get {
      if case .publicKey(let v)? = asset {return v}
      return PublicKeyAsset()
    }
    set {asset = .publicKey(newValue)}
  }

  /// [Required] Start timestamp of Asset's validity.
  var assetValidStartTimestamp: InternalSwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _assetValidStartTimestamp ?? InternalSwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_assetValidStartTimestamp = newValue}
  }
  /// Returns true if `assetValidStartTimestamp` has been explicitly set.
  var hasAssetValidStartTimestamp: Bool {return self._assetValidStartTimestamp != nil}
  /// Clears the value of `assetValidStartTimestamp`. Subsequent reads from it will return its default value.
  mutating func clearAssetValidStartTimestamp() {self._assetValidStartTimestamp = nil}

  /// [Required] Timestamp of Asset's expiry.
  var assetValidEndTimestamp: InternalSwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _assetValidEndTimestamp ?? InternalSwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_assetValidEndTimestamp = newValue}
  }
  /// Returns true if `assetValidEndTimestamp` has been explicitly set.
  var hasAssetValidEndTimestamp: Bool {return self._assetValidEndTimestamp != nil}
  /// Clears the value of `assetValidEndTimestamp`. Subsequent reads from it will return its default value.
  mutating func clearAssetValidEndTimestamp() {self._assetValidEndTimestamp = nil}

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  enum OneOf_Asset: Equatable, Sendable {
    case keyPair(KeyPairAsset)
    case publicKey(PublicKeyAsset)

  }

  init() {}

  fileprivate var _assetValidStartTimestamp: InternalSwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _assetValidEndTimestamp: InternalSwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

struct Error: Sendable {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// [Required] Failure code
  var errorCode: ErrorCode = .reserved

  /// [Optional] Failure reason for debug purpose
  var reason: String = String()

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}
}

struct KeyPairAsset: @unchecked Sendable {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var publicKey: Data = Data()

  /// For Service Client interface, it is decrypted plain format. For BlobStore storage, it is encrypted format with IV embedded.
  var privateKey: Data = Data()

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}
}

struct PublicKeyAsset: @unchecked Sendable {
  // InternalSwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var publicKey: Data = Data()

  var unknownFields = InternalSwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension AssetType: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "KEY_PAIR"),
    1: .same(proto: "PUBLIC_KEY"),
  ]
}

extension ErrorCode: InternalSwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    0: .same(proto: "Reserved"),
    400: .same(proto: "BadRequest"),
    401: .same(proto: "Unauthorized"),
    403: .same(proto: "Forbidden"),
    404: .same(proto: "NotFound"),
    405: .same(proto: "MethodNotAllowed"),
    408: .same(proto: "RequestTimeout"),
    429: .same(proto: "TooManyRequests"),
    500: .same(proto: "InternalServerError"),
    503: .same(proto: "ServiceUnavailable"),
  ]
}

extension AssetRequest: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AssetRequest"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "use_case"),
    2: .standard(proto: "asset_type"),
    16: .same(proto: "identities"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.useCase) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.assetType) }()
      case 16: try { try decoder.decodeRepeatedStringField(value: &self.identities) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.useCase.isEmpty {
      try visitor.visitSingularStringField(value: self.useCase, fieldNumber: 1)
    }
    if self.assetType != .keyPair {
      try visitor.visitSingularEnumField(value: self.assetType, fieldNumber: 2)
    }
    if !self.identities.isEmpty {
      try visitor.visitRepeatedStringField(value: self.identities, fieldNumber: 16)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AssetRequest, rhs: AssetRequest) -> Bool {
    if lhs.useCase != rhs.useCase {return false}
    if lhs.assetType != rhs.assetType {return false}
    if lhs.identities != rhs.identities {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AssetResponse: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AssetResponse"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "assets"),
    2: .same(proto: "error"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Assets?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .assets(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .assets(v)
        }
      }()
      case 2: try {
        var v: Error?
        var hadOneofValue = false
        if let current = self.result {
          hadOneofValue = true
          if case .error(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.result = .error(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.result {
    case .assets?: try {
      guard case .assets(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .error?: try {
      guard case .error(let v)? = self.result else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AssetResponse, rhs: AssetResponse) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Assets: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Assets"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "asset_bundle"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.assetBundle) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.assetBundle.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.assetBundle, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Assets, rhs: Assets) -> Bool {
    if lhs.assetBundle != rhs.assetBundle {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AssetBundle: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AssetBundle"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "key_pair"),
    2: .standard(proto: "public_key"),
    5: .standard(proto: "asset_valid_start_timestamp"),
    6: .standard(proto: "asset_valid_end_timestamp"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: KeyPairAsset?
        var hadOneofValue = false
        if let current = self.asset {
          hadOneofValue = true
          if case .keyPair(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.asset = .keyPair(v)
        }
      }()
      case 2: try {
        var v: PublicKeyAsset?
        var hadOneofValue = false
        if let current = self.asset {
          hadOneofValue = true
          if case .publicKey(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.asset = .publicKey(v)
        }
      }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._assetValidStartTimestamp) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._assetValidEndTimestamp) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.asset {
    case .keyPair?: try {
      guard case .keyPair(let v)? = self.asset else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .publicKey?: try {
      guard case .publicKey(let v)? = self.asset else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try { if let v = self._assetValidStartTimestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._assetValidEndTimestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AssetBundle, rhs: AssetBundle) -> Bool {
    if lhs.asset != rhs.asset {return false}
    if lhs._assetValidStartTimestamp != rhs._assetValidStartTimestamp {return false}
    if lhs._assetValidEndTimestamp != rhs._assetValidEndTimestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Error: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Error"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .standard(proto: "error_code"),
    2: .same(proto: "reason"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.errorCode) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.reason) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.errorCode != .reserved {
      try visitor.visitSingularEnumField(value: self.errorCode, fieldNumber: 1)
    }
    if !self.reason.isEmpty {
      try visitor.visitSingularStringField(value: self.reason, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Error, rhs: Error) -> Bool {
    if lhs.errorCode != rhs.errorCode {return false}
    if lhs.reason != rhs.reason {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension KeyPairAsset: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "KeyPairAsset"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "publicKey"),
    2: .same(proto: "privateKey"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.publicKey) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.privateKey) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.publicKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.publicKey, fieldNumber: 1)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: KeyPairAsset, rhs: KeyPairAsset) -> Bool {
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PublicKeyAsset: InternalSwiftProtobuf.Message, InternalSwiftProtobuf._MessageImplementationBase, InternalSwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "PublicKeyAsset"
  static let _protobuf_nameMap: InternalSwiftProtobuf._NameMap = [
    1: .same(proto: "publicKey"),
  ]

  mutating func decodeMessage<D: InternalSwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.publicKey) }()
      default: break
      }
    }
  }

  func traverse<V: InternalSwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.publicKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.publicKey, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PublicKeyAsset, rhs: PublicKeyAsset) -> Bool {
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}