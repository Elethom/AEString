//
//  StringTests.swift
//  AEString
//
//  Created by Elethom Hunter on 28/03/2017.
//  Copyright © 2017 Project Fig. All rights reserved.
//

import XCTest
@testable import AEString

class StringTests: XCTestCase {

    func testStrings() {
        var string: String
        // English
        string = "abcdefghijklmnopqrstuvwxyz"
        XCTAssertEqual(string[0], "a")
        XCTAssertEqual(string[-1], "z")
        XCTAssertEqual(string[6], "g")
        XCTAssertEqual(string[-6], "u")
        XCTAssertEqual(string[0,7], "abcdefg")
        XCTAssertEqual(string[3,7], "defg")
        XCTAssertEqual(string[3,0], "defghijklmnopqrstuvwxyz")
        XCTAssertEqual(string[0,-6], "abcdefghijklmnopqrst")
        XCTAssertEqual(string[-6,0], "uvwxyz")
        XCTAssertEqual(string[-6,-2], "uvwx")
        XCTAssertEqual(string[3,14,2], "dfhjln")
        XCTAssertEqual(string[3,15,3], "dgjm")
        XCTAssertEqual(string[3,16,3], "dgjmp")
        XCTAssertEqual(string[3,7,-1], "gfed")
        XCTAssertEqual(string[0,0,-1], "zyxwvutsrqponmlkjihgfedcba")
        XCTAssertEqual(string[5,15,-3], "olif")
        XCTAssertEqual(string.length(), 26)
        XCTAssertFalse(string.containsCJKCharacters())
        // Chinese
        string = "苟利國家生死以，豈因禍福避趨之。"
        XCTAssertEqual(string[0], "苟")
        XCTAssertEqual(string[-1], "。")
        XCTAssertEqual(string[6], "以")
        XCTAssertEqual(string[-6], "禍")
        XCTAssertEqual(string[0,7], "苟利國家生死以")
        XCTAssertEqual(string[3,7], "家生死以")
        XCTAssertEqual(string[3,0], "家生死以，豈因禍福避趨之。")
        XCTAssertEqual(string[0,-6], "苟利國家生死以，豈因")
        XCTAssertEqual(string[-6,0], "禍福避趨之。")
        XCTAssertEqual(string[-6,-2], "禍福避趨")
        XCTAssertEqual(string[3,10,2], "家死，因")
        XCTAssertEqual(string[3,9,3], "家以")
        XCTAssertEqual(string[3,10,3], "家以因")
        XCTAssertEqual(string[3,7,-1], "以死生家")
        XCTAssertEqual(string[0,0,-1], "。之趨避福禍因豈，以死生家國利苟")
        XCTAssertEqual(string[3,10,-3], "因以家")
        XCTAssertEqual(string.length(), 16)
        XCTAssertTrue(string.containsCJKCharacters())
        // Emoji
        string = "😀😬😁😂😃😄😅😆😇😉😊🙂🙃☺️😋😌😍😘😗😙😚😜😝😛🤑🤓"
        XCTAssertEqual(string[0], "😀")
        XCTAssertEqual(string[-1], "🤓")
        XCTAssertEqual(string[6], "😅")
        XCTAssertEqual(string[-6], "😚")
        XCTAssertEqual(string[0,7], "😀😬😁😂😃😄😅")
        XCTAssertEqual(string[3,7], "😂😃😄😅")
        XCTAssertEqual(string[3,0], "😂😃😄😅😆😇😉😊🙂🙃☺️😋😌😍😘😗😙😚😜😝😛🤑🤓")
        XCTAssertEqual(string[0,-6], "😀😬😁😂😃😄😅😆😇😉😊🙂🙃☺️😋😌😍😘😗😙")
        XCTAssertEqual(string[-6,0], "😚😜😝😛🤑🤓")
        XCTAssertEqual(string[-6,-2], "😚😜😝😛")
        XCTAssertEqual(string[3,14,2], "😂😄😆😉🙂☺️")
        XCTAssertEqual(string[3,15,3], "😂😅😉🙃")
        XCTAssertEqual(string[3,16,3], "😂😅😉🙃😌")
        XCTAssertEqual(string[3,7,-1], "😅😄😃😂")
        XCTAssertEqual(string[0,0,-1], "🤓🤑😛😝😜😚😙😗😘😍😌😋☺️🙃🙂😊😉😇😆😅😄😃😂😁😬😀")
        XCTAssertEqual(string[5,15,-3], "😋🙂😇😄")
        XCTAssertEqual(string.length(), 26)
        XCTAssertFalse(string.containsCJKCharacters())
    }

}
