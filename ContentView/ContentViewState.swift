//
//  ContentViewState.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import Foundation

@MainActor final class ContentViewState: State {
    
    @Published var currentTab: TabItem = .one
}

enum TabItem: String, CaseIterable {
    
    case one, two, three
}
