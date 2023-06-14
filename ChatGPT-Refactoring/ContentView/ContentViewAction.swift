//
//  ContentViewAction.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import SwiftUI

final class ContentViewAction: Actionable {
    
    typealias Model = ContentViewModel
    
    weak var model: ContentViewModel?
    
    init(model: ContentViewModel? = nil) {
        self.model = model
    }
    
    func didTapTab(tab: TabItem) {
        withAnimation {
            model?.currentTab = tab
        }
    }
}
