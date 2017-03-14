//
//  User.swift
//  V2EX
//
//  Created by wgh on 2017/3/2.
//  Copyright © 2017年 yitop. All rights reserved.
//

import Foundation

struct User {
    var name: String = ""
    var href: String = ""
    var src: String = ""
}

extension User {
    enum Avatar: String {
        case normal = "_normal.", mini = "_mini.", large = "_large."
    }
    
    var srcURLString: String {
        return "https:" + src
    }
    
    func avatar(_ type: Avatar) -> String {
        let arr = ["_normal.", "_mini.", "_large."]
        if let index = arr.index(where: {srcURLString.hasSuffix($0)}) {
            return srcURLString.replacingOccurrences(of: arr[index], with: type.rawValue)
        }
        return srcURLString
    }
}

