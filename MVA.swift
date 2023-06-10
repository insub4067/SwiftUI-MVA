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

protocol Actionable {
    
    associatedtype Model
    
    @MainActor var model: Model? { get }
}
