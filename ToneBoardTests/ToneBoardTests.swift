//
//  ToneBoardTests.swift
//  ToneBoardTests
//
//  Created by Kevin Bell on 12/7/21.
//

import XCTest
@testable import ToneBoard

class ToneBoardTests: XCTestCase {

    func testParsing() throws {
        let input = ToneBoardInput("fei1chang2abc")
        assert(input.syllables == ["fei1", "chang2"])
        assert(input.remainder == "abc")
    }
    
    func testDict() throws {
        let dict = SimpleCandidateDict()
        let candidates = dict.candidates(["fei1", "chang2"])
        assert(candidates == ["非常"])
    }

}
