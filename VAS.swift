//
//  VAS.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI
import Combine

// MARK: VAS
public protocol VAS: View {
    
    associatedtype Action: Actionable
    associatedtype State: Statable
    
    @MainActor var action: Action { get }
    @MainActor var state: State { get }
}

// MARK: Action
public protocol Actionable {
    
    associatedtype State
    
    @MainActor var state: State? { get }
}

@MainActor class Action<T: State>: Actionable {
    
    weak var state: T?
    
    init(state: T?) {
        self.state = state
    }
}

// MARK: State
public protocol Statable { }

@MainActor class State: ObservableObject, Statable { }
