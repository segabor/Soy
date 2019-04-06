//
//  Util.swift
//  SoyKit
//
//  Created by Gábor Sebestyén on 2019. 04. 05..
//

#if os(macOS)
import Darwin
#elseif os(Linux)
import Glibc
#endif


//
// Misc functions support
//
public enum Util {

    static public func parseInt(_ value: SoyValue) -> SoyValue {
        guard case let .string(str) = value,
            let i = Int(str)
        else {
            return .null
        }

        return .integer(i)
    }

    static public func parseFloat(_ value: SoyValue) -> SoyValue {
        guard case let .string(str) = value,
            let d = Double(str)
            else {
                return .null
        }

        return .double(d)
    }

    public static func isNull(_ value: SoyValue) -> SoyValue {
        return value == .null ? .bool(true) : .bool(false)
    }

    public static func isNonnull(_ value: SoyValue) -> SoyValue {
        return value != .null ? .bool(true) : .bool(false)
    }
}
