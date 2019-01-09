//
//  String.swift
//  AEString
//
//  Created by Elethom Hunter on 28/03/2017.
//  Copyright © 2017 Project Fig. All rights reserved.
//

import Foundation

public extension Substring {
    
    subscript(i: Int) -> Character {
        switch i {
        case let i where i < 0:
            return self[index(endIndex, offsetBy: i)]
        default:
            return self[index(startIndex, offsetBy: i)]
        }
    }
    
    subscript(i: Int) -> String {
        return String(self[i] as Character)
    }
    
}

public extension String {
    
    subscript(i: Int) -> Character {
        switch i {
        case let i where i < 0:
            return self[index(endIndex, offsetBy: i)]
        default:
            return self[index(startIndex, offsetBy: i)]
        }
    }
    
    subscript(i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript(s: Int, e: Int) -> String {
        return String(self[s, e] as Substring)
    }
    
    subscript(s: Int, e: Int) -> Substring {
        let start = s >= 0 ? s : count + s
        let end = e > 0 ? e : count + e
        return self[index(startIndex, offsetBy: start) ..< index(startIndex, offsetBy: end)]
    }
    
    subscript(s: Int, e: Int, st: Int) -> String {
        return String(self[s, e, st] as Substring)
    }
    
    subscript(s: Int, e: Int, st: Int) -> Substring {
        let slice = self[s, e] as Substring
        var result: Substring
        switch st {
        case -1:
            result = Substring(slice.reversed())
        case let st where st != 0:
            result = ""
            var i = st > 0 ? 0 : slice.count - 1
            repeat {
                result += slice[i]
                i += st
            } while (0 ..< slice.count ~= i)
        default:
            result = slice
        }
        return result
    }
    
    var containsCJKCharacters: Bool {
        get {
            guard count > 0 else {
                return false
            }
            return rangeOfCharacter(from: .cjkCharacters) != nil
        }
    }
    
}
