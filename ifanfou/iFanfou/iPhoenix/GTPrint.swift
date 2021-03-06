//
//  GTPrint.swift
//  GTMobile
//
//  Created by tung on 16/1/13.
//  Copyright © 2016年 GT. All rights reserved.
//

import Foundation

public func tprint<T>(object: T, _ file: String = __FILE__, _ function: String = __FUNCTION__, _ line: Int = __LINE__)
{
    if GT_DEBUG_MODE {
        var filename:String! = NSURL(fileURLWithPath: file).lastPathComponent?.URLString
        filename = filename.stringByReplacingOccurrencesOfString(".swift", withString: "_", options: NSStringCompareOptions.LiteralSearch, range: nil)
        print("\(filename)_\(function)[\(line)]: \(object)\n", terminator: "")
    }
}

#if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
    let TARGET_IPHONE_SIMULATOR = true
#else
    let TARGET_IPHONE_SIMULATOR = false
#endif
    