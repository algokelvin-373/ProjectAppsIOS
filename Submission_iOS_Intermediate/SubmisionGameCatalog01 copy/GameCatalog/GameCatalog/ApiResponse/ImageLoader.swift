//
//  ImageLoader.swift
//  GameCatalog
//
//  Created by Kelvin HT on 8/1/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    
    @Published var downloadImage: UIImage?
    
    func load(url: String) {
        
        guard let imageURL = URL(string: url) else {
            fatalError("ImageURL is not correct!")
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.downloadImage = nil
                }
                return
            }
            
            DispatchQueue.main.async {
                self.downloadImage = UIImage(data: data)
            }
            
        }.resume()
        
    }
    
}
