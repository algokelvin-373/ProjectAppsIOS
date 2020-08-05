//
//  URLImage.swift
//  GameCatalog
//
//  Created by Kelvin HT on 8/1/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import SwiftUI

struct URLImage: View {
    @ObservedObject private var imageLoader = ImageLoader()
    
    var placeholder: Image
    
    init(url: String, placeholder: Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        imageLoader.load(url: url)
    }
    
    var body: some View {
        if let uiImage = self.imageLoader.downloadImage {
            return Image(uiImage: uiImage)
                    .resizable()
        }
        return placeholder
    }
}
