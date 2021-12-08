//
//  CandidateDict.swift
//  ToneBoard
//
//  Created by Kevin Bell on 12/7/21.
//

import Foundation

protocol CandidateDict {
    func candidates(_ syllables: [String]) -> [String]
}

struct SimpleCandidateDict: CandidateDict {
    let readingCandidates = [
        "fei1": ["非"],
        "fei1 chang2": ["非常"],
        "wo3": ["我"],
        "bu4": ["不", "部", "步", "布", "簿", "埔", "歩", "怖", "埠", "埗", "鈈", "蔀", "吥", "鈽", "佈", "歨", "餔", "篰", "悑", "捗", "瓿"]
    ]
    
    func candidates(_ syllables: [String]) -> [String] {
        return readingCandidates[syllables.joined(separator: " ")] ?? []
    }
}
