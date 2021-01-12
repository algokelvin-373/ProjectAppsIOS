//
//  GamePresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/10/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

class GamePresenter: ObservableObject {
    private let gameRouter = GameRouter()
    private let gameUseCase: GameProtocol

    @Published var games: [GameModel] = []
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(gameUseCase: GameProtocol) {
        self.gameUseCase = gameUseCase
    }

    func getGames() {
        loadingState = true
        gameUseCase.getGame { result in
            switch result {
            case .success(let dataGames):
                DispatchQueue.main.async {
                    self.loadingState = false
                    self.games = dataGames
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
