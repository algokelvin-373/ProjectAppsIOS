//
//  MovieView.swift
//  CapStoneApps
//
//  Created by Kelvin HT on 11/27/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    @ObservedObject var presenterMovie: MoviePresenter

    var body: some View {
        ZStack {
            if presenterMovie.loadingState {
                VStack {
                    Text("Loading...")
                    ActivityIndicator()
                }
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(self.presenterMovie.movies, id: \.id) { movie in
                        VStack {
                            Text(movie.name)
                        }
                    }
                }
            }
        }.onAppear {
            if self.presenterMovie.movies.count == 0 {
                self.presenterMovie.getMovies()
            }
        }
        .navigationBarTitle(Text("Movie"), displayMode: .automatic)
    }
}
