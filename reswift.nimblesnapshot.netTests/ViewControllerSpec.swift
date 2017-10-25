//
//  ViewControllerSpec.swift
//  reswift.nimblesnapshot.netTests
//
//  Created by aoponaopon on 2017/10/25.
//  Copyright © 2017年 aoponaopon. All rights reserved.
//

@testable import reswift_nimblesnapshot_net
import Quick
import Nimble
import Nimble_Snapshots

class ViewControllerSpec: QuickSpec {
    
    override func spec() {
        describe("ViewController") {
            var window: UIWindow!
            var subject: UIViewController!
            
            beforeEach {
                window = UIWindow()
                subject =  UIStoryboard(name: "Main", bundle: Bundle(for: type(of: self))).instantiateInitialViewController() as! UIViewController
//                    Mock.storyboard(name: "Main", bundle: Bundle(for: type(of: self))).instantiateInitialViewController() as! ViewController
            }
            
            afterEach {
                window = nil
            }
            
            context("when returns all pattern events") {
                beforeEach {
//                    self.stubJson(filename: "posts.json", path: "/api/v1/posts")
                    self.run(viewController: subject, on: window)
                    self.wait(interval: 0.5)
                }
                
                it("displays correctly") {
                    📷(subject.view)
                    //                    expect(tabBarController.view).to(haveValidSnapshot())
                }
            }
        }
    }
}
