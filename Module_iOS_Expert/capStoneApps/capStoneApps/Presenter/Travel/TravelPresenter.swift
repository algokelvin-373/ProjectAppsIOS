//
//  TravelPresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class TravelPresenter: ObservableObject {
    private let travelUseCase: TravelProtocol

    @Published var travels: [TravelModel] = []
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(travelUseCase: TravelProtocol) {
        self.travelUseCase = travelUseCase
    }

    func getTravels() {
        loadingState = true
        travelUseCase.getTravel { result in
            switch result {
            case .success(let dataTravel):
                DispatchQueue.main.async {
                    self.loadingState = false
                    self.travels = dataTravel
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.loadingState = false
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
