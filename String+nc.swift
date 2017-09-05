//
//  String+nc.swift
//  ErrorTest
//
//  Created by nicaho2 on 2017/9/5.
//  Copyright © 2017年 cl. All rights reserved.
//

import Foundation

extension String {
    /// 国际化
    /// refer: https://medium.com/@dcordero/a-different-way-to-deal-with-localized-strings-in-swift-3ea0da4cd143#.zemh2p2u3
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
