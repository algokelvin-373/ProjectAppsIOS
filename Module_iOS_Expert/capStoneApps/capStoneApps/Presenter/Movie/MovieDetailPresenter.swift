//
//  MovieDetailPresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class MovieDetailPresenter: ObservableObject {
    private let detailUseCase: MovieDetailProtocol

    @Published var category: MovieModel
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(detailUseCase: MovieDetailProtocol) {
        self.detailUseCase = detailUseCase
        category = detailUseCase.getDetailMovie()
    }
}
