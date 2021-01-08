//
//  SportsProtocol.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/22/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation

class SportsPresenter: ObservableObject {
    private let sportUseCase: SportsProtocol

    @Published var sports: [SportModel] = []
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(sportUseCase: SportsProtocol) {
        self.sportUseCase = sportUseCase
    }

    func getSports() {
        loadingState = true
        sportUseCase.getSport { result in
            switch result {
            case .success(let dataSport):
                DispatchQueue.main.async {
                    self.loadingState = false
                    self.sports = dataSport
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
