//
//  QuickSpec+Helper.swift
//  reswift.nimblesnapshot.netTests
//
//  Created by aoponaopon on 2017/10/25.
//  Copyright © 2017年 aoponaopon. All rights reserved.
//

import Quick
import Nimble
import Async

extension QuickSpec {
    func run(viewController: UIViewController, on window: UIWindow) {
        window.addSubview(viewController.view)
        RunLoop.current.run(until: Date())
    }
    
    func wait(interval: Double) {
        waitUntil { done in
            Async.userInteractive(after: interval) {
                done()
            }
        }
    }
}
