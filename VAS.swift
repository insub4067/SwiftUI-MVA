//
//  VAS.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI
import Combine

// MARK: VAS
public protocol VAM: View {
    
    associatedtype Action: Actionable
    associatedtype Model: Modelable
    
    @MainActor var action: Action { get }
    @MainActor var model: Model { get }
}

// MARK: Action
public protocol Actionable: AnyObject {
    
    associatedtype Model
    
    @MainActor var model: Model? { get }
}

@MainActor class Action<T: Model>: Actionable {
    
    weak var model: T?
    
    init(model: T?) {
        self.model = model
    }
}

// MARK: Model
public protocol Modelable: AnyObject { }

@MainActor class Model: ObservableObject, Modelable { }
