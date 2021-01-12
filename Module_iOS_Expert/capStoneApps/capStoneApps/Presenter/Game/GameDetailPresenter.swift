//
//  GameDetailPresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class GameDetailPresenter: ObservableObject {
    private let detailUseCase: GameDetailProtocol

    @Published var category: GameModel
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(detailUseCase: GameDetailProtocol) {
        self.detailUseCase = detailUseCase
        category = detailUseCase.getDetailGame()
    }
}
