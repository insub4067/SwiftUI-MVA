//
//  ContentViewAction.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI

@MainActor final class ContentViewAction: Action<ContentViewState> {
    
    func didTapTab(tab: TabItem) {
        withAnimation {
            state?.currentTab = tab
        }
    }
}
