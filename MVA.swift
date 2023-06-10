//
//  MVVM.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI
import Combine

public protocol MVA: View {
    
    associatedtype Action
    associatedtype Model
    
    @MainActor var action: Action { get }
    @MainActor var model: Model { get }
}

public protocol Actionable {
    
    associatedtype Model
    
    @MainActor var model: Model? { get }
}

@MainActor class Action<T: Model>: Actionable {
    
    weak var model: T?
    
    init(model: T?) {
        self.model = model
    }
}

@MainActor class Model: ObservableObject { }
