//
//  ContentViewModel.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI

final class ContentViewModel: Modelable {
    
    @Published var currentTab: TabItem = .one
}

enum TabItem: String, CaseIterable {
    
    case one, two, three
}
