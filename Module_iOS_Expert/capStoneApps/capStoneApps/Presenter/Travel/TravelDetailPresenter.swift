//
//  TravelDetailPresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/12/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation

class TravelDetailPresenter: ObservableObject {
    private let detailUseCase: TravelDetailProtocol

    @Published var category: TravelModel
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(detailUseCase: TravelDetailProtocol) {
        self.detailUseCase = detailUseCase
        category = detailUseCase.getDetailTravel()
    }
}
