//
//  ContentViewAction.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI

@MainActor
final class ContentViewAction: Action<ContentViewModel> {
    
    func didTapTab(tab: TabItem) {
        withAnimation {
            model?.currentTab = tab
        }
    }
}
