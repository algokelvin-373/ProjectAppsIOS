//
//  GameFavoritePresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 1/15/21.
//  Copyright © 2021 Kelvin HT. All rights reserved.
//

import Foundation
import SwiftUI

class GameFavoritePresenter: ObservableObject {
    private let gameRouter = GameRouter()
    private let gameFavoriteUseCase: GameFavoriteProtocol

    @Published var game: [GameModel] = []
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(gameFavoriteUseCase: GameFavoriteProtocol) {
        self.gameFavoriteUseCase = gameFavoriteUseCase
    }

    func getLocaleGames() {
        loadingState = true
        gameFavoriteUseCase.getGameFavorite { result in
            switch result {
            case .success(let categories):
                DispatchQueue.main.async {
                    self.loadingState = false
                    self.game = categories
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.loadingState = false
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }

    func linkBuilder<Content: View>(
        for category: GameModel,
        @ViewBuilder content: () -> Content
    ) -> some View {
        NavigationLink(destination: gameRouter.goToGameDetailView(for: category)) { content() }
    }
}
