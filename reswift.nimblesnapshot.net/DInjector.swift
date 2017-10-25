//
//  DInjector.swift
//  reswift.nimblesnapshot.net
//
//  Created by aoponaopon on 2017/10/25.
//  Copyright © 2017年 aoponaopon. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

public struct DInjector {
    public func inject(_ container: Container) {
        container.storyboardInitCompleted(ViewController.self) { r, c in
        }
    }

    public init() {
    }
}

