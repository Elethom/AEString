//
//  CharacterSet.swift
//  AEString
//
//  Created by Elethom Hunter on 28/03/2017.
//  Copyright © 2017 Project Fig. All rights reserved.
//

import Foundation

public extension CharacterSet {

    static let cjkCharacters: CharacterSet = {
        var cjkCharacterSet = CharacterSet()
        cjkCharacterSet.insert(charactersIn: 0x1100 ... 0x11FF) // Hangul Jamo
        cjkCharacterSet.insert(charactersIn: 0x2E80 ... 0x2FDF) // CJK & Kangxi Radicals
        cjkCharacterSet.insert(charactersIn: 0x2FF0 ... 0x31BF) // Ideograph Descriptions, CJK Symbols, Hiragana, Katakana, Bopomofo, Hangul Compatibility Jamo, Kanbun, & Bopomofo Ext
        cjkCharacterSet.insert(charactersIn: 0x3200 ... 0xA4CF) // Enclosed CJK, CJK Ideographs (Uni Han & Ext A), & Yi
        cjkCharacterSet.insert(charactersIn: 0xAC00 ... 0xD7AF) // Hangul Syllables
        cjkCharacterSet.insert(charactersIn: 0xF900 ... 0xFA5F) // CJK Compatibility Ideographs
        cjkCharacterSet.insert(charactersIn: 0xFE30 ... 0xFE4F) // CJK Compatibility From
        cjkCharacterSet.insert(charactersIn: 0xFF00 ... 0xFFEF) // Half/Full Width Form
        cjkCharacterSet.insert(charactersIn: 0x20000 ... 0x2A6D6) // CJK Ideograph Exntension B
        cjkCharacterSet.insert(charactersIn: 0x2F800 ... 0x2FA1D) // CJK Compatibility Ideographs
        return cjkCharacterSet
    }()

    public mutating func insert(charactersIn range: Range<Int>) {
        guard let lower = UnicodeScalar(range.lowerBound), let upper = UnicodeScalar(range.upperBound) else { return }
        insert(charactersIn: lower ..< upper)
    }

    public mutating func insert(charactersIn range: ClosedRange<Int>) {
        guard let lower = UnicodeScalar(range.lowerBound), let upper = UnicodeScalar(range.upperBound) else { return }
        insert(charactersIn: lower ... upper)
    }
    
}
