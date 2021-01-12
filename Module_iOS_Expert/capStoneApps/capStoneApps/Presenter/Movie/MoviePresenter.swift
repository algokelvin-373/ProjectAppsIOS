//
//  MoviePresenter.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 12/15/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

class MoviePresenter: ObservableObject {
    private let movieRouter = MovieRouter()
    private let movieUseCase: MovieProtocol

    @Published var movies: [MovieModel] = []
    @Published var errorMessage: String = ""
    @Published var loadingState: Bool = false

    init(movieUseCase: MovieProtocol) {
        self.movieUseCase = movieUseCase
    }

    func getMovies() {
        loadingState = true
        movieUseCase.getMovie { result in
            switch result {
            case .success(let dataMovie):
                DispatchQueue.main.async {
                    self.loadingState = false
                    self.movies = dataMovie
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
        for category: MovieModel,
        @ViewBuilder content: () -> Content
    ) -> some View {
        NavigationLink(destination: movieRouter.goToMovieDetailView(for: category)) { content() }
    }
}
