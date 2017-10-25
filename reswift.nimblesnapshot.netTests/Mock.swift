//
//  Mock.swift
//  reswift.nimblesnapshot.netTests
//
//  Created by aoponaopon on 2017/10/25.
//  Copyright © 2017年 aoponaopon. All rights reserved.
//

@testable import reswift_nimblesnapshot_net
import Foundation
import Swinject
import SwinjectStoryboard

struct Mock {
    static var error: NSError {
        return NSError(domain: "", code: 0, userInfo: nil)
    }

    static var container = Container()

    static func storyboard(name: String, bundle: Bundle) -> SwinjectStoryboard {
        return SwinjectStoryboard.create(name: name, bundle: bundle, container: container)
    }
}

