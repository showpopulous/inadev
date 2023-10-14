// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

import FlatBuffers

public enum com_openmeteo_FloodModel: Int8, Enum, Verifiable {
  public typealias T = Int8
  public static var byteSize: Int { return MemoryLayout<Int8>.size }
  public var value: Int8 { return self.rawValue }
  case bestMatch = 0
  case glofasSeamlessV3 = 1
  case glofasForecastV3 = 2
  case glofasConsolidatedV3 = 3
  case glofasSeamlessV4 = 4
  case glofasForecastV4 = 5
  case glofasConsolidatedV4 = 6

  public static var max: com_openmeteo_FloodModel { return .glofasConsolidatedV4 }
  public static var min: com_openmeteo_FloodModel { return .bestMatch }
}


public struct com_openmeteo_FloodDaily: FlatBufferObject, Verifiable {

  static func validateVersion() { FlatBuffersVersion_23_5_26() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case time = 4
    case riverDischarge = 6
    case riverDischargeMean = 8
    case riverDischargeMin = 10
    case riverDischargeMax = 12
    case riverDischargeMedian = 14
    case riverDischargeP25 = 16
    case riverDischargeP75 = 18
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var time: com_openmeteo_TimeRange! { let o = _accessor.offset(VTOFFSET.time.v); return _accessor.readBuffer(of: com_openmeteo_TimeRange.self, at: o) }
  public var mutableTime: com_openmeteo_TimeRange_Mutable! { let o = _accessor.offset(VTOFFSET.time.v); return com_openmeteo_TimeRange_Mutable(_accessor.bb, o: o + _accessor.postion) }
  public var riverDischarge: com_openmeteo_ValuesUnitAndMember? { let o = _accessor.offset(VTOFFSET.riverDischarge.v); return o == 0 ? nil : com_openmeteo_ValuesUnitAndMember(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public var riverDischargeMean: com_openmeteo_ValuesAndUnit? { let o = _accessor.offset(VTOFFSET.riverDischargeMean.v); return o == 0 ? nil : com_openmeteo_ValuesAndUnit(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public var riverDischargeMin: com_openmeteo_ValuesAndUnit? { let o = _accessor.offset(VTOFFSET.riverDischargeMin.v); return o == 0 ? nil : com_openmeteo_ValuesAndUnit(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public var riverDischargeMax: com_openmeteo_ValuesAndUnit? { let o = _accessor.offset(VTOFFSET.riverDischargeMax.v); return o == 0 ? nil : com_openmeteo_ValuesAndUnit(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public var riverDischargeMedian: com_openmeteo_ValuesAndUnit? { let o = _accessor.offset(VTOFFSET.riverDischargeMedian.v); return o == 0 ? nil : com_openmeteo_ValuesAndUnit(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public var riverDischargeP25: com_openmeteo_ValuesAndUnit? { let o = _accessor.offset(VTOFFSET.riverDischargeP25.v); return o == 0 ? nil : com_openmeteo_ValuesAndUnit(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public var riverDischargeP75: com_openmeteo_ValuesAndUnit? { let o = _accessor.offset(VTOFFSET.riverDischargeP75.v); return o == 0 ? nil : com_openmeteo_ValuesAndUnit(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public static func startFloodDaily(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 8) }
  public static func add(time: com_openmeteo_TimeRange?, _ fbb: inout FlatBufferBuilder) { guard let time = time else { return }; fbb.create(struct: time, position: VTOFFSET.time.p) }
  public static func add(riverDischarge: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: riverDischarge, at: VTOFFSET.riverDischarge.p) }
  public static func add(riverDischargeMean: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: riverDischargeMean, at: VTOFFSET.riverDischargeMean.p) }
  public static func add(riverDischargeMin: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: riverDischargeMin, at: VTOFFSET.riverDischargeMin.p) }
  public static func add(riverDischargeMax: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: riverDischargeMax, at: VTOFFSET.riverDischargeMax.p) }
  public static func add(riverDischargeMedian: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: riverDischargeMedian, at: VTOFFSET.riverDischargeMedian.p) }
  public static func add(riverDischargeP25: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: riverDischargeP25, at: VTOFFSET.riverDischargeP25.p) }
  public static func add(riverDischargeP75: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: riverDischargeP75, at: VTOFFSET.riverDischargeP75.p) }
  public static func endFloodDaily(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); fbb.require(table: end, fields: [4]); return end }
  public static func createFloodDaily(
    _ fbb: inout FlatBufferBuilder,
    time: com_openmeteo_TimeRange,
    riverDischargeOffset riverDischarge: Offset = Offset(),
    riverDischargeMeanOffset riverDischargeMean: Offset = Offset(),
    riverDischargeMinOffset riverDischargeMin: Offset = Offset(),
    riverDischargeMaxOffset riverDischargeMax: Offset = Offset(),
    riverDischargeMedianOffset riverDischargeMedian: Offset = Offset(),
    riverDischargeP25Offset riverDischargeP25: Offset = Offset(),
    riverDischargeP75Offset riverDischargeP75: Offset = Offset()
  ) -> Offset {
    let __start = com_openmeteo_FloodDaily.startFloodDaily(&fbb)
    com_openmeteo_FloodDaily.add(time: time, &fbb)
    com_openmeteo_FloodDaily.add(riverDischarge: riverDischarge, &fbb)
    com_openmeteo_FloodDaily.add(riverDischargeMean: riverDischargeMean, &fbb)
    com_openmeteo_FloodDaily.add(riverDischargeMin: riverDischargeMin, &fbb)
    com_openmeteo_FloodDaily.add(riverDischargeMax: riverDischargeMax, &fbb)
    com_openmeteo_FloodDaily.add(riverDischargeMedian: riverDischargeMedian, &fbb)
    com_openmeteo_FloodDaily.add(riverDischargeP25: riverDischargeP25, &fbb)
    com_openmeteo_FloodDaily.add(riverDischargeP75: riverDischargeP75, &fbb)
    return com_openmeteo_FloodDaily.endFloodDaily(&fbb, start: __start)
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.time.p, fieldName: "time", required: true, type: com_openmeteo_TimeRange.self)
    try _v.visit(field: VTOFFSET.riverDischarge.p, fieldName: "riverDischarge", required: false, type: ForwardOffset<com_openmeteo_ValuesUnitAndMember>.self)
    try _v.visit(field: VTOFFSET.riverDischargeMean.p, fieldName: "riverDischargeMean", required: false, type: ForwardOffset<com_openmeteo_ValuesAndUnit>.self)
    try _v.visit(field: VTOFFSET.riverDischargeMin.p, fieldName: "riverDischargeMin", required: false, type: ForwardOffset<com_openmeteo_ValuesAndUnit>.self)
    try _v.visit(field: VTOFFSET.riverDischargeMax.p, fieldName: "riverDischargeMax", required: false, type: ForwardOffset<com_openmeteo_ValuesAndUnit>.self)
    try _v.visit(field: VTOFFSET.riverDischargeMedian.p, fieldName: "riverDischargeMedian", required: false, type: ForwardOffset<com_openmeteo_ValuesAndUnit>.self)
    try _v.visit(field: VTOFFSET.riverDischargeP25.p, fieldName: "riverDischargeP25", required: false, type: ForwardOffset<com_openmeteo_ValuesAndUnit>.self)
    try _v.visit(field: VTOFFSET.riverDischargeP75.p, fieldName: "riverDischargeP75", required: false, type: ForwardOffset<com_openmeteo_ValuesAndUnit>.self)
    _v.finish()
  }
}

public struct com_openmeteo_FloodApi: FlatBufferObject, Verifiable {

  static func validateVersion() { FlatBuffersVersion_23_5_26() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case latitude = 4
    case longitude = 6
    case elevation = 8
    case model = 10
    case generationtimeMs = 12
    case utcOffsetSeconds = 14
    case timezone = 16
    case timezoneAbbreviation = 18
    case time = 20
    case daily = 22
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var latitude: Float32 { let o = _accessor.offset(VTOFFSET.latitude.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var longitude: Float32 { let o = _accessor.offset(VTOFFSET.longitude.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var elevation: Float32 { let o = _accessor.offset(VTOFFSET.elevation.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var model: com_openmeteo_FloodModel { let o = _accessor.offset(VTOFFSET.model.v); return o == 0 ? .bestMatch : com_openmeteo_FloodModel(rawValue: _accessor.readBuffer(of: Int8.self, at: o)) ?? .bestMatch }
  public var generationtimeMs: Float32 { let o = _accessor.offset(VTOFFSET.generationtimeMs.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Float32.self, at: o) }
  public var utcOffsetSeconds: Int32 { let o = _accessor.offset(VTOFFSET.utcOffsetSeconds.v); return o == 0 ? 0 : _accessor.readBuffer(of: Int32.self, at: o) }
  public var timezone: String? { let o = _accessor.offset(VTOFFSET.timezone.v); return o == 0 ? nil : _accessor.string(at: o) }
  public var timezoneSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.timezone.v) }
  public var timezoneAbbreviation: String? { let o = _accessor.offset(VTOFFSET.timezoneAbbreviation.v); return o == 0 ? nil : _accessor.string(at: o) }
  public var timezoneAbbreviationSegmentArray: [UInt8]? { return _accessor.getVector(at: VTOFFSET.timezoneAbbreviation.v) }
  public var time: com_openmeteo_TimeRange? { let o = _accessor.offset(VTOFFSET.time.v); return o == 0 ? nil : _accessor.readBuffer(of: com_openmeteo_TimeRange.self, at: o) }
  public var mutableTime: com_openmeteo_TimeRange_Mutable? { let o = _accessor.offset(VTOFFSET.time.v); return o == 0 ? nil : com_openmeteo_TimeRange_Mutable(_accessor.bb, o: o + _accessor.postion) }
  public var daily: com_openmeteo_FloodDaily? { let o = _accessor.offset(VTOFFSET.daily.v); return o == 0 ? nil : com_openmeteo_FloodDaily(_accessor.bb, o: _accessor.indirect(o + _accessor.postion)) }
  public static func startFloodApi(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 10) }
  public static func add(latitude: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: latitude, def: 0.0, at: VTOFFSET.latitude.p) }
  public static func add(longitude: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: longitude, def: 0.0, at: VTOFFSET.longitude.p) }
  public static func add(elevation: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: elevation, def: 0.0, at: VTOFFSET.elevation.p) }
  public static func add(model: com_openmeteo_FloodModel, _ fbb: inout FlatBufferBuilder) { fbb.add(element: model.rawValue, def: 0, at: VTOFFSET.model.p) }
  public static func add(generationtimeMs: Float32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: generationtimeMs, def: 0.0, at: VTOFFSET.generationtimeMs.p) }
  public static func add(utcOffsetSeconds: Int32, _ fbb: inout FlatBufferBuilder) { fbb.add(element: utcOffsetSeconds, def: 0, at: VTOFFSET.utcOffsetSeconds.p) }
  public static func add(timezone: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: timezone, at: VTOFFSET.timezone.p) }
  public static func add(timezoneAbbreviation: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: timezoneAbbreviation, at: VTOFFSET.timezoneAbbreviation.p) }
  public static func add(time: com_openmeteo_TimeRange?, _ fbb: inout FlatBufferBuilder) { guard let time = time else { return }; fbb.create(struct: time, position: VTOFFSET.time.p) }
  public static func add(daily: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: daily, at: VTOFFSET.daily.p) }
  public static func endFloodApi(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  public static func createFloodApi(
    _ fbb: inout FlatBufferBuilder,
    latitude: Float32 = 0.0,
    longitude: Float32 = 0.0,
    elevation: Float32 = 0.0,
    model: com_openmeteo_FloodModel = .bestMatch,
    generationtimeMs: Float32 = 0.0,
    utcOffsetSeconds: Int32 = 0,
    timezoneOffset timezone: Offset = Offset(),
    timezoneAbbreviationOffset timezoneAbbreviation: Offset = Offset(),
    time: com_openmeteo_TimeRange? = nil,
    dailyOffset daily: Offset = Offset()
  ) -> Offset {
    let __start = com_openmeteo_FloodApi.startFloodApi(&fbb)
    com_openmeteo_FloodApi.add(latitude: latitude, &fbb)
    com_openmeteo_FloodApi.add(longitude: longitude, &fbb)
    com_openmeteo_FloodApi.add(elevation: elevation, &fbb)
    com_openmeteo_FloodApi.add(model: model, &fbb)
    com_openmeteo_FloodApi.add(generationtimeMs: generationtimeMs, &fbb)
    com_openmeteo_FloodApi.add(utcOffsetSeconds: utcOffsetSeconds, &fbb)
    com_openmeteo_FloodApi.add(timezone: timezone, &fbb)
    com_openmeteo_FloodApi.add(timezoneAbbreviation: timezoneAbbreviation, &fbb)
    com_openmeteo_FloodApi.add(time: time, &fbb)
    com_openmeteo_FloodApi.add(daily: daily, &fbb)
    return com_openmeteo_FloodApi.endFloodApi(&fbb, start: __start)
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.latitude.p, fieldName: "latitude", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.longitude.p, fieldName: "longitude", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.elevation.p, fieldName: "elevation", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.model.p, fieldName: "model", required: false, type: com_openmeteo_FloodModel.self)
    try _v.visit(field: VTOFFSET.generationtimeMs.p, fieldName: "generationtimeMs", required: false, type: Float32.self)
    try _v.visit(field: VTOFFSET.utcOffsetSeconds.p, fieldName: "utcOffsetSeconds", required: false, type: Int32.self)
    try _v.visit(field: VTOFFSET.timezone.p, fieldName: "timezone", required: false, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.timezoneAbbreviation.p, fieldName: "timezoneAbbreviation", required: false, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.time.p, fieldName: "time", required: false, type: com_openmeteo_TimeRange.self)
    try _v.visit(field: VTOFFSET.daily.p, fieldName: "daily", required: false, type: ForwardOffset<com_openmeteo_FloodDaily>.self)
    _v.finish()
  }
}

