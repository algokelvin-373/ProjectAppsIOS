//
//  SportsDetailPresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/8/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class SportsDetailPresenter: ObservableObject {
    private let detailUseCase: SportsDetailProtocol

    @Published var category: SportModel
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(detailUseCase: SportsDetailProtocol) {
        self.detailUseCase = detailUseCase
        category = detailUseCase.getDetailSport()
    }
}
