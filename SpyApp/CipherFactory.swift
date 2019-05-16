//
//  AppDelegate.swift
//  SpyApp
//
//  Created by Angelo Madarang on 3/25/19.
//  Copyright © 2019 Angelo Madarang. All rights reserved.
//

import Foundation

struct CipherFactory {

    private var ciphers: [String: Cipher] = [
        "ceasar": CeaserCipher(),
        "alphanumceasar": AlphaNumericCesarCipher(),
        "cypher13":Cypher13(),
        "supercypher":SuperCypher()
    ]

    func cipher(for key: String) -> Cipher {
        return ciphers[key]!
    }
}
