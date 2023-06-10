//
//  Container.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI
import Combine


public protocol MVI: View {
    
    associatedtype Action
    associatedtype Model
    
    var action: Action { get }
    var model: Model { get }
}

@MainActor
final class ViewAction {
    
    weak var model: ViewModel?

    init(model: ViewModel) {
        self.model = model
    }
    
    func didTapTab(tab: TabItem) {
        withAnimation {
            model?.currentTab = tab
        }
    }
}

@MainActor
final class ViewModel: ObservableObject {
    @Published var currentTab: TabItem = .one
}
