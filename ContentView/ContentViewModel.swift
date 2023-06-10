//
//  ContentViewModel.swift
//  TEST
//
//  Created by 김인섭 on 2023/06/10.
//

import Foundation

@MainActor
final class ContentViewModel: ObservableObject {
    
    @Published var currentTab: TabItem = .one
}
