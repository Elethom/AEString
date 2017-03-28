//
//  String.swift
//  AEString
//
//  Created by Elethom Hunter on 28/03/2017.
//  Copyright © 2017 Project Fig. All rights reserved.
//

import Foundation

public extension String {

    subscript (i: Int) -> Character {
        switch i {
        case let i where i < 0:
            return self[characters.index(endIndex, offsetBy: i)]
        default:
            return self[characters.index(startIndex, offsetBy: i)]
        }
    }

    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }

    subscript (s: Int, e: Int) -> String {
        let start = s >= 0 ? s : length() + s
        let end = e > 0 ? e : length() + e
        return self[Range(characters.index(startIndex, offsetBy: start) ..< characters.index(startIndex, offsetBy: end))]
    }

    subscript (s: Int, e: Int, st: Int) -> String {
        let slice = self[s, e]
        var result: String
        switch st {
        case -1:
            result = String(slice.characters.reversed())
        case let st where st != 0:
            result = ""
            var i = st > 0 ? 0 : slice.length() - 1
            repeat {
                result += slice[i]
                i += st
            } while (i >= 0 && i < slice.length())
        default:
            result = slice
        }
        return result
    }

    func length() -> Int {
        return characters.count
    }

    func containsCJKCharacters() -> Bool {
        guard length() > 0  else {
            return false
        }
        return rangeOfCharacter(from: .cjkCharacters) != nil
    }
    
}
