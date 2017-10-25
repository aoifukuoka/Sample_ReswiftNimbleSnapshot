//
//  AppState.swift
//  reswift.nimblesnapshot.net
//
//  Created by aoponaopon on 2017/10/25.
//  Copyright © 2017年 aoponaopon. All rights reserved.
//

import Foundation

import Foundation
import ReSwift

struct AppState: StateType {
    var counter: Int = 0
}
struct CounterActionIncrease: Action {}
struct CounterActionDecrease: Action {}

func counterReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()
    
    switch action {
    case _ as CounterActionIncrease:
        state.counter += 1
    case _ as CounterActionDecrease:
        state.counter -= 1
    default:
        break
    }
    
    return state
}
